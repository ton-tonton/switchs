# frozen_string_literal: true

require 'switchs'
require 'switchs/cli_parser'

module Switchs::CLI
  def self.start
    Switchs::CLIParser.parse(ARGV)

    puts Switchs.exec(ARGV[0])
  rescue Switchs::Error
    Switchs::CLIParser.parse(%w[--help])
  end
end
