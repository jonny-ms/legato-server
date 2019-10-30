class LessonsController < ApplicationController

  def create
  end


    
  private
    def lesson_params
      params.require(:lesson)
    end
  
end
