# SteamValve

Steam Valve is a gem for wrapping up interactions with the Steam Web API into ruby objects. Created for use with our 
Steam Ngin app, we have extracted the functionality into its own gem for all to use.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'steam_valve'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install steam_valve

## Usage

This gem requires an environment variable called STEAM_API_KEY which can be set with the following command:

    & export STEAM_API_KEY=your_steam_api_key

It will be easier if you add this line to your environment configuration file (e.g zshrc or bashrc).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

