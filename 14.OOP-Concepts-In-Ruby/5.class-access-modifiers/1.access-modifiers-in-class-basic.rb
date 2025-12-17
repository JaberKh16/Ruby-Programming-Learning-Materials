# working with access modifiers in Ruby class
class Person
    # public method
    def set_name(name)
        @name = name
    end

    # protected method
    protected
    def get_name
        @name
    end

    # private method
    private
    def secret_identity
        "Secret identity of #{@name}"
    end
end

# example usage
person = Person.new
person.set_name("John Doe")
puts person.send(:get_name)          # accessing protected method using send
puts person.send(:secret_identity)    # accessing private method using send