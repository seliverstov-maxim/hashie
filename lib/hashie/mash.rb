require "hashie/version"
module Hashie 
  class Mash < BaseHash
    def initialize()
    end

    def method_missing(m, *args, &block)
      define_singleton_method(m) do |val|
        raise m
        
      end
    end
  end
end