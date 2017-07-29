class HomeController < ApplicationController
  def index
    current = Company.where('start_time<=? AND end_time>=?',Time.now.utc,Time.now.utc)
    @company = []
    current.each do |c|
      name = ""
      l = c.name.split("_")
      l.each do |l|
        name = name + " " + l
      end
      @company << {id_name: c.name,name:name,offer: c.offer,description: c.description,end_time:c.end_time,departments: c.departments}
    end
  end


end
