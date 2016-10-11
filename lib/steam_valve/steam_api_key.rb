module SteamAPIKey
  def self.set_api_key(api_key)
    @api_key = api_key
  end

  def self.api_key
    @api_key.empty? ? fail(SteamValveExceptions::ApiKeyMissingError) : @api_key
  end
end