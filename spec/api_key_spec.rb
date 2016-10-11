require 'spec_helper'

describe SteamAPIKey do
  describe '#api_key' do
    context 'with an api key' do
      it 'returns the API key' do
        SteamAPIKey.set_api_key('ABCDEF')

        expect(SteamAPIKey.api_key).to eq('ABCDEF')
      end
    end

    context 'without a key' do
      it 'raises a ApiKeyMissingError exception' do
        SteamAPIKey.set_api_key('')

        expect{ SteamAPIKey.api_key }.to raise_error(SteamValveExceptions::ApiKeyMissingError)
      end
    end
  end
end
