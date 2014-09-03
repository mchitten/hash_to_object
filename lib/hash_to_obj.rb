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
    klass = OpenStruct.new
    hash.each do |key, val|
      klass.send("#{key}=", val)

      unless val.instance_of? Hash
        klass.send("#{key}=", val)
      else
        klass.send("#{key}=", val.to_obj)
      end
    end

    klass
  end
end

