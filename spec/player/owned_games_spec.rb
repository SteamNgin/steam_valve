require 'spec_helper'

describe  do
  describe '#game_list' do
    context 'with a valid player_id' do
      it 'returns all of the players games' do
        ENV['STEAM_API_KEY'] = 'ABCDEF'

        expect(SteamValve.game_list).to have_key('game_count')
      end
    end
  end
end