namespace :refinery do
  namespace :music do
	  desc "Install music plugin"
 
  	task :install do
  		puts `ruby #{File.expand_path(File.dirname(__FILE__) << '/../..')}/bin/refinerycms-music-install #{Rails.root.to_s}`
  	end
	end
end