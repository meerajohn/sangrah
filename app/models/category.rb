class Category < ActiveRecord::Base
  include MasterConcerns

  has_many :items, dependent: :restrict_with_error

  validates_presence_of :code, :name, :kind
  validates_uniqueness_of :code, :name
end
