require 'rest-client'
require 'json'

class Translator
  def initialize(text, from_lang, to_lang, auth_key)
    @text = text
    @from_lang = from_lang
    @to_lang = to_lang
    @auth_key = auth_key
  end

  def translate
    response = RestClient.get "https://translate.yandex.net/api/v1.5/tr.json/translate", {
      params: {
        key: @auth_key,
        text: @text,
        lang: "#{@from_lang}-#{@to_lang}"
      }
    }

    parsed_response = JSON.parse(response.body)
    parsed_response['text'][0]
  end
end

puts "Digite o texto a ser traduzido:"
text = gets.chomp

puts "Digite o idioma de origem (ex: pt para português, en para inglês):"
from_lang = gets.chomp

puts "Digite o idioma de destino (ex: pt para português, en para inglês):"
to_lang = gets.chomp

auth_key = '####### - Pendente'

translator = Translator.new(text, from_lang, to_lang, auth_key)
translated_text = translator.translate

timestamp = Time.now.strftime('%d-%m-%y_%H:%M')
filename = "#{timestamp}.txt"

File.open(filename, 'w') do |file|
  file.write("Texto original: #{text}\n")
  file.write("Texto traduzido: #{translated_text}\n")
end

puts "Texto original: #{text}"
puts "Texto traduzido: #{translated_text}"