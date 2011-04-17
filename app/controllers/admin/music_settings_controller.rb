module Admin
  class MusicSettingsController < Admin::BaseController
    crudify :music_setting, :title_attribute => :name, :order => "id ASC", :searchable => false

    def toggle
      @music_setting = MusicSetting.find(params[:id])
      @music_setting.toggle!(:value)
      
      flash[:notice] = "Comment from '#{@music_setting.name}' has been set to '#{@music_setting.value ? 'true' : 'false'}'"

      redirect_to :action => 'index'
    end
  end
end
