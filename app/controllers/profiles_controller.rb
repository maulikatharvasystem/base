class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  before_action :find_profile, only: [:edit, :update, :show]

  def new
    @profile = current_user.build_profile
  end

  def create
    current_user.build_profile(permitted_params).save
    redirect_to edit_user_profile_path
  end

  def edit; end

  def update
    @profile.update_attributes(permitted_params)
    redirect_to edit_user_profile_path
  end

  def show; end

  protected

  def find_profile
    @profile = current_user.profile
  end

  def permitted_params
    params.require(:profile).permit(:first_name, :last_name, :dob, :address, :phone_number)
  end
end
