require 'rubygems'
require 'test/unit'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'active_support/hash_with_indifferent_access' # do this first so the HashWithIndifferentAccess fix is added
require 'to_json_fix'

class Test::Unit::TestCase
end
