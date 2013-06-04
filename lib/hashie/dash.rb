require "hashie/version"
module Hashie
  class Dash
    def initialize(options)
      @options = options
    end
    def self.property(name, options = {})
      define_method "#{name}=" do |v|
        if @options[:required] && v.nil?
          raise ArgumentError
        end
        @options[name] = v
      end
      define_method "[]=" do |k, v|
        if @options[:required] && v.nil?
          raise ArgumentError
        end
        @options[k] = v
      end


      define_method name do
        @options[name]
      end
      define_method "[]" do |k|
        @options[k]
      end
    end
  end
end
