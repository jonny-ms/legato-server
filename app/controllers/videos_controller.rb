class VideosController < ApplicationController

  def create

    @video = Video.new(video_params)
    @video.save
    p @video
    
    
  end

  def destroy

    Video.find(params[:id]).destroy
    
  end

  private
    def video_params
      params.require(:video).permit(:teacher_id, :file, :instrument, :level)
    end
  
end
