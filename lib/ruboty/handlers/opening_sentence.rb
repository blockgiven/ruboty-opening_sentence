# encoding: UTF-8
require "ruboty/actions/opening_sentence"

module Ruboty
  module Handlers
    class OpeningSentence < Base
      on /(?:書き出し)/, name: 'opening_sentence', description: '小説の書き出しを表示します。'

      def opening_sentence(message)
        Ruboty::Actions::OpeningSentence.new(message).call
      end
    end
  end
end
