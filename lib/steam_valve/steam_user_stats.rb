require 'httparty'

module SteamValve
  def self.current_players(game_id)
    @api_endpoint_url =  "https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=#{game_id}"
    HTTParty.get(@api_endpoint_url).to_hash
  end
end
