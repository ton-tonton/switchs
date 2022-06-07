# frozen_string_literal: true

require 'optparse'

module Switchs::CLIParser
  def self.parse(args)
    OptionParser.new do |opts|
      opts.banner = 'Usage: switchs [STR]'

      opts.on('-h', '--help', 'Prints this help') do
        puts opts
        exit
      end
    end.parse!(args)
  end
end
