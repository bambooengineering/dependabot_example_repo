# frozen_string_literal: true

# Important note: If you update this version constant to use newer versions of bundler as they are
# released (which is encouraged) remember to also:
# - Search for and update any hard-coded references to this version in all Dockerfile files
# - bundle install in all projects to get the updated Gemfile.lock files
REQUIRED_BUNDLER_VERSION = Gem::Version.new("2.4.4").freeze
