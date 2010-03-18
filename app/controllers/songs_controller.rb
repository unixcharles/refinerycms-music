class SongsController < ApplicationController
  before_filter :find_page

  def index
    @songs = Song.published
  end

  def show
    @songs = Song.published # for body_content_right
    @song = Song.find(params[:id], :conditions => {:published => true})
  end

protected

  def find_page
    @page = Page.find_by_link_url("/music")
  end

end
