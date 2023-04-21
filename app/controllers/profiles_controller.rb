class ProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def index
    @profiles = Profile.published
  end

  def new
    @profile = Profile.new
  end

  def create
<<<<<<< HEAD
    @profile = Profile.new(params.require(:profile).permit(:name, :image, :call, :oshi_name, :reason, :every, :future, :job, :favorite_point, :free, :user_id, :user_name, :is_published_flag, :color, :sns))
=======
    @profile = Profile.new(params.require(:profile).permit(:name, :image, :call, :oshi_name, :reason, :every, :future, :job, :favorite_point, :free, :user_id, :is_published_flag, :color, :sns))
>>>>>>> 9d844ddeef8b005f531d231581ea62e33f3f3a69
    if @profile.save
      flash[:notice] = "登録が完了しました。"
      redirect_to @profile
    else
<<<<<<< HEAD
      flash[:notice] = "登録できませんでした。"
=======
>>>>>>> 9d844ddeef8b005f531d231581ea62e33f3f3a69
      render "new"
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
    
  end

  def update
    @profile = Profile.find(params[:id])
<<<<<<< HEAD
    if @profile.update(params.require(:profile).permit(:name, :image, :call, :oshi_name, :reason, :every, :future, :job, :favorite_point, :free, :user_id, :user_name, :is_published_flag, :color, :sns))
      flash[:notice] = "変更が完了しました！"
      redirect_to @profile
    else
      flash[:notice] = "変更できませんでした。"
=======
    if @profile.update(params.require(:profile).permit(:name, :image, :call, :oshi_name, :reason, :every, :future, :job, :favorite_point, :free, :user_id, :is_published_flag, :color, :sns))
      flash[:notice] = "変更が完了しました！"
      redirect_to @profile
    else
>>>>>>> 9d844ddeef8b005f531d231581ea62e33f3f3a69
      render "edit"
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    flash[:notice] = "削除されました"
    redirect_to :profiles
  end

  def myprofile_index
    @profiles = Profile.where(user_id: current_user.id).includes(:user).order("created_at DESC")
  end
end
