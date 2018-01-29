class SayController < ApplicationController
  require 'digest/sha1'
  require 'json'
  
  def hello
    @time = Time.now
    @date = DateTime.now
  end

  def goodbye
    @time = Time.now
    @date = DateTime.now
  end
  
  def antonio
    @date = DateTime.now
    @firstname = "Antonio"
    @lastname = "Calmon"
    @password = "motorola"
    @files = Dir.glob("*")
    @size = @files.length
    @text = "<ul>"
    for i in 0..@size -1
        @text = @text + "<li>#{@files[i]}</li>"
    end
    @text = @text + "</ul>"
    @file = @files[2]
    @pass = Digest::SHA2.new << @password   #Thats the way to create a SHA2 password
  end
  
  def json
    @arraycategories = ["Bicycling","Byking","Bowling","Soccer","Futball","Reading","IT course","Party"]
  end
end
