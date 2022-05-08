describe 'make request' do
  context'to update datas' do
    it 'put' do
      @body_put = {
      "id": 148,
      "name": "fanderson kaecio 128",
      "last-name": "Valencio128",
      "email": "kaecio.valenci1o@yahoo.com.br",
      "age": "36",
      "phone": "11988555555",
      "address": "Rua alta",
      "state": "São Paulo",
      "city": "São Paulo"
      }.to_json
      @requisitions_put = Contacts.put('/contacts/148', body: @body_put)
      puts "-------------------------------------------------------------------"
      puts @requisitions_put, "put"
    end
    it 'patch' do
      @body_patch = { 
        "id": 40,
        "name": "fanderson kaeci1",
        "last-name": "Valencio130",
        "email": "kaecio.valencio130@yahoo.com.br",
      }.to_json
      @requisitions_patch = Contacts.patch('/contacts/40', body: @body_patch)
      puts "-------------------------------------------------------------------"
      puts @requisitions_patch, " patch"
    end
  end
end