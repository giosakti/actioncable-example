class HomeController < ApplicationController
  def show
    @username = session[:username] || ""
  end

  def login
    session[:username] = login_params[:username]

    respond_to do |format|
      format.html { redirect_to "/", notice: 'Succesfully login.' }
    end
  end

  def logout
    session[:username] = ""

    respond_to do |format|
      format.html { redirect_to "/", notice: 'Succesfully logout.' }
    end
  end

  private
    def login_params
      params.require(:login).permit(:username)
    end
end
