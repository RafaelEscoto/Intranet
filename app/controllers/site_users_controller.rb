class SiteUsersController < ApplicationController
  before_action :set_site_user, only: [:show, :edit, :update, :destroy]

  # GET /site_users/new
  def new
    @site_user = SiteUser.new
  end

  # POST /site_users
  # POST /site_users.json
  def create
    site_user = SiteUser.new(site_user_params)
      if site_user.save
        session[:site_user_id] = site_user.id
        redirect_to '/', notice: 'Usuario creado satisfactoriamente'
      else
        flash[:error] = '¡A ocurrido un error'
        render 'new'
      end
  end

  # DELETE /site_users/1
  # DELETE /site_users/1.json
  def destroy
    @site_user.destroy
    respond_to do |format|
      format.html { redirect_to site_users_url, notice: 'Site user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def site_user_params
      params.require(:site_user).permit(:name, :email, :password_digest)
    end
end
