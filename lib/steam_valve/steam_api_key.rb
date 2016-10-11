module SteamAPIKey
  def self.api_key
    ENV['STEAM_API_KEY'].empty? ? fail(SteamValveExceptions::ApiKeyMissingError) : ENV['STEAM_API_KEY']
  end
end