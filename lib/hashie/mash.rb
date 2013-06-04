require "hashie/version"
module Hashie 
  class Mash < BaseHash
    def initialize()
      super
    end

    def respond_to_missing?()

    end

    def method_missing(m, *args, &block)
      operator_name = m[-1].to_s
      case operator_name
      when '?' then
         var_name = operator_name.scan(/^(.*)\?/).first[0]
         self.define_singleton_method(m) do
           self.key? var_name
         end
         self.send(m)
      when "=" then
        var_name = m.to_s.scan(/^(.*)\=/).first[0]
        self[var_name] = args[0]
        self.define_singleton_method(m) do |v|
          self[var_name] = v
        end
      else
        self.define_singleton_method(m) do
          self[m.to_s]
        end
        self.send(m)
      end
    end
  end
end
