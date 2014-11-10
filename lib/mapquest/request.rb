class MapQuest
  class Request < RestClient::Resource

    # The base url of the mapquest api
    API_ROOT = 'http://ope.mapquestapi.com/%s/v%s/%s'
    #API_ROOT = 'http://open.mapquestapi.com/directions/v%s/route?key=%s'

    def initialize(method)
      super API_ROOT % [method[:location], method[:version], method[:call]]
    end

    def query(params)
      get :params => params
    end

  end
end