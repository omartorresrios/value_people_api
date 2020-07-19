class ProfessionController < ApplicationController
  # before_action :set_user
  # before_action :authenticate_user!

  def all_professions
    @professions = Profession.all
    render json: @professions, status: 200
  end

  private

    def set_user
      @user = User.find_by(id: params[:id])
    end
end
