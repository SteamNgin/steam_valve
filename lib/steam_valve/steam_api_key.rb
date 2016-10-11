module SteamAPIKey
  def self.set_api_key(key)
    @api_key = key
  end

  def self.api_key
    @api_key.empty? ? fail(SteamValve::ApiKeyMissingError) : @api_key
  end
end