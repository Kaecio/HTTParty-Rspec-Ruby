module Create
    include HTTParty
    # url contact base
    base_uri 'https://api-de-tarefas.herokuapp.com'
    format :json
end