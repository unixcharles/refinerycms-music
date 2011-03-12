module Admin
  class MusicController < Admin::BaseController
    crudify :song, :title_attribute => :title

  end
end
