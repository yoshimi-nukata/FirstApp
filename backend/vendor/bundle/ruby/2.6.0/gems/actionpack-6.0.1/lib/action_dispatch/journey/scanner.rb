# frozen_string_literal: true

require 'strscan'

module ActionDispatch

  module Journey # :nodoc:

    class Scanner # :nodoc:

      def initialize
        @ss = nil
      end

      def scan_setup(str)
        @ss = StringScanner.new(str)
      end

      def eos?
        @ss.eos?
      end

      def pos
        @ss.pos
      end

      def pre_match
        @ss.pre_match
      end

      def next_token
        return if @ss.eos?

        until token = scan || @ss.eos?; end
        token
      end

      private

        # takes advantage of String @- deduping capabilities in Ruby 2.5 upwards
        # see: https://bugs.ruby-lang.org/issues/13077
        def dedup_scan(regex)
          r = @ss.scan(regex)
          r ? -r : nil
        end

        def scan
          if @ss.skip(%r{/})
            [:SLASH, '/']
          elsif @ss.skip(/\(/)
            [:LPAREN, '(']
          elsif @ss.skip(/\)/)
            [:RPAREN, ')']
          elsif @ss.skip(/\|/)
            [:OR, '|']
          elsif @ss.skip(/\./)
            [:DOT, '.']
          elsif text = dedup_scan(/:\w+/)
            [:SYMBOL, text]
          elsif text = dedup_scan(/\*\w+/)
            [:STAR, text]
          elsif text = @ss.scan(/(?:[\w%\-~!$&'*+,;=@]|\\[:()])+/)
            text.tr! '\\', ''
            [:LITERAL, -text]
            # any char
          elsif text = dedup_scan(/./)
            [:LITERAL, text]
          end
        end

    end

  end

end
