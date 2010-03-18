class Admin::SongsController < Admin::BaseController

  crudify :song, :title_attribute => :title

end
