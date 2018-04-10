class IndexController < ApplicationController
  require 'nokogiri'
  require 'open-uri'

  def hello
    url = 'http://mychamp.ru/'
    html = open(url)
    doc = Nokogiri::HTML(html)
    doc.encoding = 'utf-8'
    binding.pry
    b=1
  end
end
