require 'spec_helper'

describe SteamAPIKey do
  describe '#api_key' do
    it 'returns the API key' do
      SteamAPIKey.set_api_key('ABCDEF')

      expect(SteamAPIKey.api_key).to eq('ABCDEF')
    end
  end
end
