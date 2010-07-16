require 'rubygems'
require 'active_support/version'
%w{
  active_support/json
}.each do |active_support_3_requirement|
  require active_support_3_requirement
end if ActiveSupport::VERSION::MAJOR == 3

class Time
  def to_json(*)
    super nil
  end
end

class Date
  def to_json(*)
    super nil
  end
end

class Symbol
  def to_json(*)
    to_s.to_json
  end
end

if defined?(ActiveSupport::HashWithIndifferentAccess)
  class ActiveSupport::HashWithIndifferentAccess
    def to_json(*)
      to_hash.to_json
    end
  end
end
