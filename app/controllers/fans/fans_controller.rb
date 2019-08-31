class Fans::FansController < ApplicationController

  def show
    @fan = Fan.friendly.find(params[:id])
  end

end