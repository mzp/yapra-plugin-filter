require 'yapra/plugin/base'
require 'ostruct'

module Yapra::Plugin::Filter
  class Copy < Yapra::Plugin::Base
    def run(data)
      data.map {|item|
        target = OpenStruct.new({})
        config['map'].each do|key, value|
          target[key] = eval value
        end
        target
      }
    end
  end
end
