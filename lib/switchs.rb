# frozen_string_literal: true

require_relative 'switchs/version'

module Switchs
  class Error < StandardError; end

  def self.exec(str)
    raise Error, 'Given string cannot be null' if str.nil? || str.empty?

    length = str.size
    dup_str = str.dup
    new_str = []

    length.times do
      new_str << dup_str.slice!(rand(dup_str.size))
    end

    new_str.join('')
  end
end
