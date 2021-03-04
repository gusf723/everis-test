describe 'fazer uma requisição' do
    it 'get' do
        @get = HTTParty.get('https://httpbin.org/get')
        puts @get
        expect(@get.parsed_response['url']).to eql('https://httpbin.org/get')
    end
end