class StoriesController < ApplicationController
  
  skip_before_action :authenticate_user!, only: %i[index show]
  
  def index
    @stories = Story.where(locale: I18n.locale)
    @stories = Story.all
    policy_scope(Story)
  end

  def show
    @story = Story.friendly.find(params[:id])
    authorize @story
    if @story.youtube
      @video = Youtube.youtube_embed(@story.youtube)
    end 
  end

  private

  def story_params
    params.require(:story).permit(:title, :description, :locale, :photo, :photo_cache)
  end
    
end