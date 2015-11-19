class WelcomeController < ApplicationController

  skip_before_filter :authenticate_user!

  def index
    render layout: "welcome/index"
  end

  def about
  end

end
