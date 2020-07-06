class InterestController < ApplicationController
  # before_action :set_user
  # before_action :authenticate_user!

  def all_interests
    @interests = Interest.all
    render json: @interests, status: 200
  end

  private

    def set_user
      @user = User.find_by(id: params[:id])
    end
end
