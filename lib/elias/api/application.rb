# frozen_string_literal: true

module Elias
  module API
    Application = lambda do |*|
      require 'json'
      tickets = [
        { id: 1, number: 'ticket#1' },
        { id: 2, number: 'ticket#2' }
      ]

      [200, {}, [tickets.to_json]]
    end
  end
end
