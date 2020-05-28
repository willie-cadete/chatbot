require_relative './../spec_helper.rb'

describe TranslateService do
  let(:text_pt) {"Testando uma chamada a API de tradução"}
  let(:text_en) {"Testing a call to the API for translation"}
  let(:lang) {"pt-en"}
  let(:api_return) do
    {
      code: 200,
      lang: lang,
      text: [ 
        text_en
      ]
    }
  end

  before do
    allow(RestClient).to receive(:get){
      OpenStruct.new(body: api_return.to_json)
    }
  end

  context 'with valid params' do

    it "Receive the text translated" do
      translation = TranslateService.new(text_pt).call
      expect(translation).to match(text_en)
    end

  end

  context 'with invalid params' do

    it "Receive a ArgumentError message" do
      expect { TranslateService.new().call }.to raise_error(ArgumentError)
    end

  end
end