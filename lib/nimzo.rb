require 'nimzo/version'

# Load the defaults
#
module Nimzo
  class << self
      attr_writer :ui
        end

  class << self
      attr_reader :ui
        end
                end
