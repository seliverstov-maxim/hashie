require "hashie/version"
module Hashie
  class Dash
    def self.get_default
      @default
    end

    def self.get_required
      @required
    end

    def initialize(options)
      @values = {}
      @required = self.class.get_required
      @default = self.class.get_default

      #@values.merge!(@required)
      @values.merge!(@default)
      @values.merge!(options)

      if (@required.to_a - @values.to_a).empty?
        raise ArgumentError
      end
    end
    def self.property(name, options = {})
      @default ||= {}
      @required ||= {}

      @default[name] = options[:default]
      @required[name] = options[:required]

      define_method "#{name}=" do |v|
        if @required[name] && v.nil?
          raise ArgumentError
        end
        @values[name] = v
      end
      define_method "[]=" do |k, v|
        if @required[name] && v.nil?
          raise ArgumentError
        end
        @values[k] = v
      end


      define_method name do
        @values[name]
      end
      define_method "[]" do |k|
        @values[k]
      end
    end
  end
end
