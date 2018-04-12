class IndexController < ApplicationController
  require 'rubygems'
  require 'nokogiri'
  require 'mechanize'
  require 'open-uri'

  def hello
    url = 'https://www.adidas.ru/on/demandware.store/Sites-adidas-RU-Site/ru_RU/MyAccount-CreateOrLogin'
    url = 'http://mychamp.ru/login'
    # html = open(url)
    # doc = Nokogiri::HTML(html)
    # doc.encoding = 'utf-8'
    # doc.encoding = 'windows-1251'
    # doc.encoding = 'ASCII-8BIT'


    agent = Mechanize.new
    agent.user_agent =  "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36"
    agent.user_agent_alias = 'Linux Mozilla'
    agent.log = Logger.new(STDOUT)
    sleep=5
    agent.get(url) do |page|
      sleep=5
      # form = page.form(id: "dwfrm_login")
      # form.field_with(id: "dwfrm_login_username").value = "serg.kom@gmail.com"
      # form.field_with(id: "dwfrm_login_password").value = "n258LuBx91QX"
      # form.dwfrm_login_username = "serg.kom@gmail.com"
      # sleep=5
      # form.dwfrm_login_password = "n258LuBx91QX"
      sleep=5

      form = page.form(class: "form-horizontal")
      form.field_with(id: "email").value = "serg.kom@gmail.com"
      form.field_with(id: "password").value = "68123333"
      sleep=5
      # mama = form.click_button
      sleep=5
      # pp form.click_button
      form.submit
      # pp page
      binding.pry

      # html = open('https://www.adidas.ru/on/demandware.store/Sites-adidas-RU-Site/ru_RU/MyAccount-Show')
      # doc = Nokogiri::HTML(html)
      # doc.encoding = 'ASCII-8BIT'


    end
    
    # loyalty-universe-container
  end
end
