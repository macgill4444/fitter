class ProfilesController < ApplicationController
  def index
  	@new_post = Post.new
  	@new_workout = Workout.new
  end

  def new_post
  	@new_post = Post.create(content: params[:post][:content], title: params[:post][:title], user_id: params[:post][:id])
  	# render :index
  	current_user.posts.append(@new_post)
  	redirect_to profile_path
  end

  def new_workout
  	@new_workout = Workout.create(sport: params[:workout][:sport], start_time: params[:workout][:start_time], end_time: params[:workout][:end_time], user_id: params[:workout][:id])
  	current_user.workouts.append(@new_workout)
  	redirect_to profile_path
  end
end
