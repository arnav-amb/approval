class HomeController < ApplicationController
  def index
    current = Company.where('start_time<=? AND end_time>=?',Time.now,Time.now)
    @company = []
    current.each do |c|
      @company << {name:c.name,offer: c.offer,description: c.description,end_time:c.end_time,departments: c.departments}
    end
  end


end
