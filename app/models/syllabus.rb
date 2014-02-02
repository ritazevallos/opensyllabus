class Syllabus < ActiveRecord::Base
  belongs_to :topic
  validates_presence_of :topic_id, :title, :chnm_cache
end
