class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  skip_before_action :authenticate_user!, only: %i[home blog about contact]

  def home
  end

  def about
  end

  def contact
  end

  def blog
  end

end
