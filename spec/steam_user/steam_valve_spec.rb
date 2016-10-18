require 'spec_helper'

describe SteamValve do
  describe '#game_list' do
    context 'with a valid player_id' do
      it 'returns all of the players games' do
        expect(SteamValve.game_list('76561198030992261')['response']).to have_key('game_count')
      end
    end
  end

  describe '#current_players' do
    context 'with a valid game_id' do
      it 'returns the amount of current players' do
        expect(SteamValve.current_players('292030')['response']).to have_key('player_count')
      end
    end
  end
end
