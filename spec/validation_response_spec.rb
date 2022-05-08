
describe 'make request by id' do
  it 'get' do
    @get_contact = Contacts.get('/contacts/263')
    #puts @get_contact.code
    #expect(@get_contact).to equal("200")
    expect(@get_contact.code).to eq(200)
    expect(@get_contact.code).not_to eq(201)
    puts @get_contact.body
    puts "-------------------------------------------------"
    puts @get_contact.parsed_response['data']['attributes']['name']
    puts "-------------------------------------------------"
    expect(@get_contact.parsed_response['data']['attributes']['name']).to eq('Elisa')
  end
end