# encoding: UTF-8
require 'json'
require 'open-uri'

module Ruboty
  module Actions
    class OpeningSentence < Base
      AOZORA_RANDOM_BOOK_URL = 'http://aozora-api.herokuapp.com/books/random.json'

      def call
        json = open(AOZORA_RANDOM_BOOK_URL).read rescue return
        book = JSON.parse(json) rescue return
        message = [
          "@#{message.from_name}",
          "作品名: #{book['title']}",
          book['opening_sentence'],
          book['url']
        ].join($/)
        message.reply(message)
      end
    end
  end
end
