describe 'make um required' do
  it 'post' do
    @body = {
      "name": "fanderson kaecio",
      "last-name": "Valencio",
      "email": "kaecio.va@yahoo.com.br",
      "age": "36",
      "phone": "11988555555",
      "address": "Rua alta",
      "state": "São Paulo",
      "city": "São Paulo"
    }.to_json

    #@headers = {
    #  "Accept": "application/vnd.tasksmanager.v2",
    #  "Content-Type": "application/json"
    #}

   # @request = HTTParty.post("https://api-de-tarefas.herokuapp.com/contacts", body: @body, headers: @headers)
   # puts @request

   @request = Contacts.post('/contacts', body: @body)
   puts @request
  end
end