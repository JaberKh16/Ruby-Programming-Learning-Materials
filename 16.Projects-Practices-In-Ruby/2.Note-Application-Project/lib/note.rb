require 'securerandom'
require 'time'

class Note
  attr_reader :id, :created_at
  attr_accessor :content, :updated_at

  def initialize(content)
    raise "Note content cannot be empty!" if content.strip.empty?

    @id = SecureRandom.uuid
    @content = content
    @created_at = Time.now
    @updated_at = @created_at
  end

  def update_content(new_content)
    raise "Note content cannot be empty!" if new_content.strip.empty?

    @content = new_content
    @updated_at = Time.now
  end

  def to_s
    <<~NOTE
    ID: #{@id}
    Created: #{@created_at.strftime('%Y-%m-%d %H:%M:%S')}
    Last Edit: #{@updated_at.strftime('%Y-%m-%d %H:%M:%S')}
    Note: #{@content}
    NOTE
  end

end
