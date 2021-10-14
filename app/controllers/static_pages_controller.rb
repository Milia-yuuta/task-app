class StaticPagesController < ApplicationController
  def home
    @archives = Archive.all.paginate(page: params[:page]) if logged_in?
    @archive_instance = current_user.archives.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end
