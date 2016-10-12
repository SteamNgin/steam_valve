require 'httparty'

module SteamValve
  def self.game_list
    @api_endpoint_url = "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=BD322C5B035C4FC70A2F7FC1C4EA13F2&steamid=76561198030992261&include_appinfo=1&format=json"
    response = HTTParty.get(@api_endpoint_url).to_hash
  end
end