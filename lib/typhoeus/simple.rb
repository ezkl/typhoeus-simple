require 'typhoeus'
require 'nokogiri'

require 'typhoeus/simple/version'

module Kernel
  def get uri, params = {}
    Typhoeus::Request.get(uri, params)
  end unless method_defined?(:get)
  
  def get_parsed uri, params = {}, encoding = "UTF-8"
    Nokogiri::HTML(get(uri, params).body, uri, encoding)
  end unless method_defined?(:get_parsed)
end