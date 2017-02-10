class VisitorsController < ApplicationController
    skip_before_action :authenticate_request, only: :new
    
    def new
        Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m" + ' entering new method'
        @owner = Owner.new
        Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m" + ': Owner name is ' + @owner.name
        render 'visitors/new'
    end


end