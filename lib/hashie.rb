require "hashie/version"
module Hashie
  class BaseHash < Hash

  end

  autoload :Mash, 'hashie/mash'
  autoload :Dash, 'hashie/dash'
end
