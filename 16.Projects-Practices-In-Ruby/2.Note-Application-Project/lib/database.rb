require 'pstore'

class Database
  
    def initialize(file_name = 'notes.pstore')
        @store = PStore.new(file_name)
        @undo_stack = []
    end

    def store_note(note)
        @store.transaction do
            @store[note.id] = note
        @undo_stack << { action: :add, note_id: note.id }
        end
    end

    def all_notes
        notes = []
        @store.transaction(true) do
            @store.roots.map { |id| @store[id] }
        end 
    end

    def find_note(id)
        @store.transaction(true) do
            @store[id]
        end
    end

    def update_note(id, new_content)
        @store.transaction do
            note = @store[id]
            return unless note

            note.instance_variable_set(:@content, new_content)
            @store[id] = note
            @undo_stack << { action: :edit, note_id: id, old_content: old_content }
        end
    end


    def delete_note(id)
        @store.transaction do
        note = @store.delete(id)
        @undo_stack << { action: :delete, note: note } if note
        end
    end


    # Undo last operation
    def undo_last
        return if @undo_stack.empty?

        last = @undo_stack.pop

        @store.transaction do
        case last[:action]
        when :add
            @store.delete(last[:note_id])
        when :delete
            @store[last[:note].id] = last[:note]
        when :edit
            note = @store[last[:note_id]]
            note.update_content(last[:old_content]) if note
        end
        end
    end
end
