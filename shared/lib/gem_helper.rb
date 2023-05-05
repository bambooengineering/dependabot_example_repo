# frozen_string_literal: true
require_relative "required_bundler_version"

module GemHelper
  class << self
    def check_minimum_required_bundler_version
      puts "Actual Bundler version: #{bundler_version}, needed: #{REQUIRED_BUNDLER_VERSION}"
      raise(<<~MSG) unless bundler_version >= REQUIRED_BUNDLER_VERSION


        Incorrect bundler version:

        Your version: #{bundler_version}
        Minimum required version: #{REQUIRED_BUNDLER_VERSION}

        Please run 'banco-shared/install_bundler'

      MSG
    end

    private def bundler_version
      Gem::Version.new(Bundler::VERSION)
    end
  end
end

GemHelper.check_minimum_required_bundler_version
