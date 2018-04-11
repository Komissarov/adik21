class IndexController < ApplicationController
  require 'nokogiri'
  require 'mechanize'
  require 'open-uri'

  def hello
    url = 'https://www.adidas.ru/on/demandware.store/Sites-adidas-RU-Site/ru_RU/MyAccount-CreateOrLogin'
    # html = open(url)
    # doc = Nokogiri::HTML(html)
    # doc.encoding = 'utf-8'
    # doc.encoding = 'windows-1251'


    agent = Mechanize.new
    page = agent.get(url)
    form = page.form(id: "dwfrm_login")
    form.field_with(id: "dwfrm_login_username").value = "serg.kom@gmail.com"
    form.field_with(id: "dwfrm_login_password").value = "n258LuBx91QX"
    mama = form.submit
    
    # loyalty-universe-container
  end
end
