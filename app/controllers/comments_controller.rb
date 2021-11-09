class CommentsController < ApplicationController

  def new
    @provider = Provider.find(params[:provider_id])
    @introduceduser = IntroducedUser.new
  end
  
 
  def create
      @provider = Provider.find(params[:provider_id])
      @introduceduser = IntroducedUser.new(
        introduced_user_name: params[:introduced_user_name],
        phonenumber: params[:phonenumber],
        contents: params[:contents],
        provider_id: @provider.id,
        user_id: current_user.id )
      
  
      
      if  @introduceduser.save
         IntroduceMailer.complete_introduction(@introduceduser,@provider,@current_user).deliver
          redirect_back(fallback_location: tops_index_path)  #コメント送信後は、一つ前のページへリダイレクトさせる。
      else
          redirect_back(fallback_location: provider_index_path)  #同上
          flash.now.alert = '入力に誤りがあります。入力必須項目を確認して下さい。'
    end
  end
  private

  def introduceduser_params
    params.require(:introduceduser).permit(:introduced_user_name, :phonenumber, :contents).merge(user_id: current_user.id, provider_id: params[:provider_id]) #ストロングパラメーターで、
  end  

end
