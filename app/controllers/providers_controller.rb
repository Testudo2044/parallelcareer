class ProvidersController < ApplicationController

  def index
    @providers = Provider.includes(:introduced_users)
  end

   
  def new
     @provider = Provider.new
  end

  def create
    @provider = Provider.new(
      title: params[:title],
      content: params[:content],
      reward: params[:reward],
      rcontent: params[:rcontent],
      rday: params[:rday],
      area: params[:area],
      appeal: params[:appeal]
      )


    @provider.save

    redirect_to("/providers")
  end

  def edit
   @provider = Provider.find(params[:id])
  end

  def update
    @provider = Provider.find(params[:id])
    if @provider.update(params.permit(:title, :content, :reward, :rcontent, :rday, :area, :appeal))
      redirect_to request.referer
    else
      render :new
    end
  end


 def destroy
    @provider = Provider.find_by(id:params[:id])
    @provider.destroy
    redirect_to("/providers")
 end
def show
    @provider = Provider.find(params[:id])
  end

end
