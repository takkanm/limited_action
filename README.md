# LimitedAction

```
$ cat test.rb
requrie 'limited_action'

LimitedAction.condition! { ENV['LIMITED_ACTION'] == 'allow' }

limited_action! { puts 'limited action' }

$ LIMITED_ACTION=hoge ruby test.rb
$ LIMITED_ACTION=allow ruby test.rb
limited action
```


## Installation

Add this line to your application's Gemfile:

    gem 'limited_action'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install limited_action

## Usage

### require

```ruby
requrie 'limited_action'
```

### Set Condition

```ruby
LimitedAction.condition! { ENV['LIMITED_ACTION'] == 'allow' }
```

### write action

```ruby
limited_action! { puts 'limited action' }
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
