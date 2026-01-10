require './database'

class Manager
    def initialize
      @database = Database.new
    end

    def add_note(note)
      @database.store_note(note)
    end

    def all_notes
      entries = @database.all_notes
      if entries.empty?
        puts "No Entries Found".center(50, '-')
      end
      entries.each_with_index do |item, index|
        puts (index + 1).to_s.center(50, '-')
        puts item 
        puts "".center(50, '-')
      end
    end

    def find_note_by_index(index)
      notes = all_notes
      notes[index] if index.between?(0, notes.size - 1)
    end

    def update_note_by_index(index, new_content)
      note = find_note_by_index(index)
      @database.update_note(note.id, new_content) if note
    end

    def delete_note_by_index(index)
      note = find_note_by_index(index)
      @database.delete_note(note.id) if note
    end

    def undo
      @database.undo_last
    end

    # Search notes by keyword
    def search_notes(keyword)
      all_notes.select { |note| note.content.downcase.include?(keyword.downcase) }
    end
end
