class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  skip_before_action :authenticate_user!, only: %i[home blog about contact index projects]

  def index
  end
  
  def home
  end

  def about
  end

  def contact
  end

  def blog
  end

  def projects
  end

end
