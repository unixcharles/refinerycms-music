class Song < ActiveRecord::Base
  acts_as_indexed :fields => [:title, :description],
                  :index_file => [Rails.root.to_s, "tmp", "index"]
  
  named_scope :published, :conditions => {:published => true}, :order => :position
  
  validates_presence_of :title
  validates_uniqueness_of :title
  
  def file
    Resource.find(resource_id).public_filename if resource_id
  end
end
