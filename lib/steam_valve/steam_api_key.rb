module SteamAPIKey

  def self.set_api_key(key)
    @api_key = key
  end

  def self.api_key
    @api_key
  end
end