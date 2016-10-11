module SteamValve
  class ApiKeyMissingError < StandardError
    def initialize(error = 'The API key is missing')
      super(error)
    end
  end
end
