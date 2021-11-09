class TestController < ApplicationController

  def index #管理者側紹介一覧
   @introducedusers = IntroducedUser.all

  
  end
  def show
    @introduceduser = IntroducedUser.find(params[:id])
    # @user = User.find_by(id: session[:user_id])
    @user = User.find_by(id:[:current_user_id])
    @provider = Provider.find_by(id: @introduceduser.provider_id)
  end
end
