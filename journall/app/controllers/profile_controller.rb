class ProfileController < ApplicationController

  def index
    puts params[:username]
  end

end
