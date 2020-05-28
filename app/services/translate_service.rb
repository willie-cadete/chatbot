require 'rest-client'
require 'json'

class TranslateService
  def initialize(text, lang='pt-en')
    @api_url = ENV['YANDEX_API_URL']
    @api_key = ENV['YANDEX_API_KEY']
    @text = text
    @lang = lang
  end

  def call
    begin
      url = "#{@api_url}?key=#{@api_key}&text=#{@text}&lang=#{@lang}"
      response = RestClient.get(url)
      JSON.parse(response.body)['text'][0]
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end