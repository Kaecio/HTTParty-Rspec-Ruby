
describe 'make a request' do
  it 'get' do
    #@first_option = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts')
    #puts @first_option
    @one_option = Contacts.get('/contacts')
    puts @one_option
  end
end