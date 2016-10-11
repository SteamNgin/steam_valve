require 'spec_helper'

describe SteamAPIKey do
  describe '#api_key' do
    context 'with an api key environment variable set' do
      it 'returns the API key' do
        ENV['STEAM_API_KEY'] = 'ABCDEF'

        expect(SteamAPIKey.api_key).to eq('ABCDEF')
      end
    end

    context 'without an api key environment variable set' do
      it 'raises an ApiKeyMissingError' do
        ENV['STEAM_API_KEY'] = ''

        expect{ SteamAPIKey.api_key }.to raise_error(SteamValveExceptions::ApiKeyMissingError)
      end
    end
  end
end