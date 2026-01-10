require './manager'
require './note'

class Menu
  def initialize
    @manager = Manager.new
  end

  def add_note
    print "Enter your note: "
    content = gets.chomp
    begin
      note = Note.new(content)
      @manager.add_note(note)
      puts "Note added."
    rescue => e
      puts e.message
    end
  end

  def view_notes
    notes = @manager.all_notes
    if notes.empty?
      puts "No notes found."
      return
    end
    notes.each_with_index do |note, i|
      puts "#{i}: #{note.content} (Created: #{note.created_at.strftime('%Y-%m-%d %H:%M:%S')})"
    end
  end

  def edit_note
    view_notes
    print "Enter index of note to edit: "
    index = gets.chomp.to_i
    note = @manager.find_note_by_index(index)
    unless note
      puts "Invalid index."
      return
    end
    puts "Current content: #{note.content}"
    print "Enter new content: "
    new_content = gets.chomp
    begin
      @manager.update_note_by_index(index, new_content)
      puts "Note updated."
    rescue => e
      puts e.message
    end
  end

  def delete_note
    view_notes
    print "Enter index of note to delete: "
    index = gets.chomp.to_i
    @manager.delete_note_by_index(index)
    puts "Note deleted (if it existed)."
  end

  def undo
    @manager.undo
    puts "Last operation undone."
  end

  def search_notes
    print "Enter keyword to search: "
    keyword = gets.chomp
    results = @manager.search_notes(keyword)
    if results.empty?
      puts "No matching notes found."
    else
      results.each { |note| puts note.to_s }
    end
  end
end
