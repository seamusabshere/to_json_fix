require 'rubygems'
require 'test/unit'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

# do this first so the HashWithIndifferentAccess is defined
require 'active_support/hash_with_indifferent_access'

# do this first so ActiveRecord::Base is defined
module ActiveRecord
  class Base
    # more or less what ActiveRecord wants to_json to be before the json gem interferes
    def to_json(options = nil)
    end
  end
end

require 'to_json_fix'

class Test::Unit::TestCase
end
