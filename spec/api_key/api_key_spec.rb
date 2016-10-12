require 'spec_helper'

describe SteamAPIKey do
  describe '#api_key' do
    context 'with an api key environment variable set' do
      it 'returns the API key specified in the local environment' do
        expect(SteamAPIKey.api_key).to eq(ENV['STEAM_API_KEY'])
      end
    end

    context 'without an api key environment variable set' do
      it 'raises an ApiKeyMissingError' do
        allow(ENV).to receive(:[]).with('STEAM_API_KEY').and_return('')

        expect{ SteamAPIKey.api_key }.to raise_error(SteamValveExceptions::ApiKeyMissingError)
      end
    end
  end
end