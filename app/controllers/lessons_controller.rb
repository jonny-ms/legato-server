class LessonsController < ApplicationController

  def create
    p lesson_params

    lesson_params.each do |x|
      @lesson = Lesson.new(student_id: session[:student_id], course_id: '1')
      @timeslot = Timeslot.find(x)
      @lesson.save
      @timeslot.update(lesson_id: @lesson.id)
    end
    
  end


    
  private
    def lesson_params
      params.require(:lesson)
    end
  
end
