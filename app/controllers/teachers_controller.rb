class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all

    render json: @teachers, status: :ok
  end

  
end
