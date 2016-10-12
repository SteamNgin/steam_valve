require 'spec_helper'

describe SteamValve do
  describe '#game_list' do
    context 'with a valid player_id' do
      it 'returns all of the players games' do
        expect(SteamValve.game_list('76561198030992261')['response']).to have_key('game_count')
      end
    end
  end
end