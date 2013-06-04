require "hashie/version"

module Hashie
  class Mash
    attr_accessor :name
    def initialize(name = nil)
      @name = name
    end

    def name_nil?
      @name.nil?
    end

    def name?
      !name_nil?
    end
    def author
      self.class
    end

    def method_missing(m, *args, &block)

    end
  end
end
