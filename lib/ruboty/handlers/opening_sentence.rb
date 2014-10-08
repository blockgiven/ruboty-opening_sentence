# encoding: UTF-8

module Ruboty
  module Handlers
    class OpeningSentence
      on /(?:書き出し)/, name: 'opening_sentence', description: '小説の書き出しを表示します。'

      def opening_sentence(message)
        Ruboty::Actions::OpeningSentence.new(message).call
      end
    end
  end
end
