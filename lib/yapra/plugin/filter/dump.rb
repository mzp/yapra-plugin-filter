require 'yapra/plugin/base'
require 'pp'

module Yapra::Plugin::Filter
  class Dump < Yapra::Plugin::Base
    def run(data)
     pp data
     data
    end
  end
end
