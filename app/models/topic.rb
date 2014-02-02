class Topic < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :slugged

  has_many :syllabuses
  validates :name, presence:true, uniqueness: true
  validates_presence_of :slug
end
