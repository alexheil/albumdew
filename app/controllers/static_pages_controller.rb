class StaticPagesController < ApplicationController

  before_action :redirect_if_signed_in, only: [:register, :sign_in]

  def home
  end

  def sign_in
  end

  def register
  end

  private

    def redirect_if_signed_in
      if artist_signed_in? || fan_signed_in?
        redirect_to root_url
        flash[:notice] = " You are already signed in!"
      end
    end


end