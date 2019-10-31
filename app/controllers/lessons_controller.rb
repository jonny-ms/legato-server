class LessonsController < ApplicationController

  def create
    # Create a lesson once a student has requested an appointment - not a booking until the teacher confirms
    # TODO: Set 1 lesson for multiple timeslots if the timeslots are in a row
    @lesson = Lesson.create(student_id: session[:student_id], course_id: lesson_params[:course_id])

    lesson_params[:timeslots].each do |x|
      @timeslot = Timeslot.find(x)
      @timeslot.update(lesson_id: @lesson.id)
    end
    
  end


    
  private
    def lesson_params
      params.require(:lesson).permit(:course_id, timeslots: [])
    end
  
end
