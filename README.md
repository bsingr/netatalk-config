# NetatalkConfig

Ruby-based configuration for netatalk services.

* generate afp.conf

## Installation

Add this line to your application's Gemfile:

    gem 'netatalk-config'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install netatalk-config

## Usage

configure some shares

    NetatalkConfig.shares['my_share'] = {
      'path' => '/path/to/my/share'
    }

    NetatalkConfig.shares['my_timemachine'] = {
      'path' => '/path/to/my/timemachine/backups',
      'time_machine' => true
    }

    NetatalkConfig.afp # => afp.conf content
   
and print out the afp.conf
    
    [my_timemachine]
      path = /path/to/my/timemachine/backups
      time machine = yes
    [my_share]
      path = /path/to/my/share
    

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## LICENSE

(c) 2013 Jens Bissinger. See [LICENSE](LICENSE.txt).