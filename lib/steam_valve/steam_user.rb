require 'httparty'

module SteamValve
  def self.game_list(steam_id)
    @api_endpoint_url = "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=#{SteamAPIKey.api_key}&steamid=#{steam_id}&include_appinfo=1&format=json"
    HTTParty.get(@api_endpoint_url).to_hash
  end

  def self.current_players(game_id)
    @api_endpoint_url =  "https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=#{game_id}"
    HTTParty.get(@api_endpoint_url).to_hash
  end

end
