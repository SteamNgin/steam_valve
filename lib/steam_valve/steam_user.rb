require 'httparty'

module SteamValve
  def self.game_list
    @api_endpoint_url = "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=#{SteamAPIKey.api_key}&steamid=76561198030992261&include_appinfo=1&format=json"
    HTTParty.get(@api_endpoint_url).to_hash
  end
end