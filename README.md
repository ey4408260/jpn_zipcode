# JpnZipcode
https://rubygems.org/gems/jpn_zipcode

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/jpn_zipcode`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jpn_zipcode'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jpn_zipcode

## Usage

'''
$ irb
irb(main):001:0> require 'jpn_zipcode'
=> true
irb(main):002:0> @main = ::JpnZipcode::Main.new
=> #<JpnZipcode::Main:0x007f13c888c970>
irb(main):003:0> @main.get_address('1400002')
=> "1400002,東京都,品川区,東品川,TOKYO TO,SHINAGAWA KU,HIGASHISHINAGAWA\n"
irb(main):004:0> @main.get_address('140-0002')
=> "1400002,東京都,品川区,東品川,TOKYO TO,SHINAGAWA KU,HIGASHISHINAGAWA\n"
irb(main):005:0> @main.get_address('1400002')
=> "1400002,東京都,品川区,東品川,TOKYO TO,SHINAGAWA KU,HIGASHISHINAGAWA\n"
'''

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/jpn_zipcode. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

##Test Result(master)
<img src=https://travis-ci.org/ey4408260/jpn_zipcode.svg?branch=master>
