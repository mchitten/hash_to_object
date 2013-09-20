require "hash_to_obj/version"

class Hash
  # Convert a Hash to a Class object.  This method accepts multi-dimensional hashes.
  #
  # Example:
  #   >> myhash = { :title => "hello world" }.to_obj
  #   >> myhash.title
  #   => "hello world"
  def to_obj
    hash = self
    klass = Class.new
    hash.each do |key, val|
      klass.send(:define_method, "#{key}=", proc { |val| klass.instance_variable_set("@#{key}", val) })
      klass.send(:define_method, key, proc { klass.instance_variable_get("@#{key}") })

      unless val.instance_of? Hash
        klass.instance_variable_set("@#{key}", val)
      else
        klass.instance_variable_set("@#{key}", val.to_obj)
      end
    end

    klass.new
  end
end

