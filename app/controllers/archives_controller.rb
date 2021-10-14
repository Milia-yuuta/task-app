class ArchivesController < ApplicationController
  def create
    @archive = current_user.archives.build(archive_params)
    @save = @archive.save
    if @save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy

  end

  private

  def archive_params
    params.require(:archive).permit(:content, :title, :created_by_admin)
  end
end
