require "hash_to_obj/version"

class Hash
  def to_obj
    hash = self
    klass = Class.new
    hash.each do |key, val|
      klass.instance_variable_set("@#{key}", val)
      klass.send(:define_method, key, proc { klass.instance_variable_get("@#{key}") })
      klass.send(:define_method, "#{key}=", proc { |val| klass.instance_variable_set("@#{key}", val) })
    end

    klass.new
  end
end

