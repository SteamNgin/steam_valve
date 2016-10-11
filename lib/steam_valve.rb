require "steam_valve/version"
require "steam_valve/steam_api_key"
require "exceptions/api_key_missing_error"

module SteamValve
  attr_reader :api_key

  def initialize
    API_KEY = SteamAPIKey.api_key
    puts API_KEY
  end
end