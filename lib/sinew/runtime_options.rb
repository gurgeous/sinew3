#
# Runtime options that sinew files can modify.
#

module Sinew
  class RuntimeOptions
    attr_accessor :retries
    attr_accessor :rate_limit
    attr_accessor :headers
    attr_accessor :httpdisk_options
    attr_accessor :insecure

    def initialize
      self.retries = 3
      self.rate_limit = 1
      self.headers = {
        'User-Agent' => "sinew/#{VERSION}",
      }
      self.httpdisk_options = {}
      self.insecure = false

      # for testing
      if ENV['SINEW_TEST']
        self.rate_limit = 0
      end
    end
  end
end
