# HashToObj

The hash_to_object gem converts a hash into a Class Object.  For example:

```ruby
h = { :title => 'Hello world!' }.to_obj
p h.title
# => "Hello world!"
```

## Installation

Add this line to your application's Gemfile:

    gem 'hash_to_obj'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hash_to_obj

## Usage

Using hash_to_object is very simple.  Just call the `to_obj` method on any valid hash.

```ruby
h = { :title => 'Hello world!' }.to_obj
p h.title
# => "Hello world!"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
