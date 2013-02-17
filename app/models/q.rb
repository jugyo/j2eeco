class Q < ActiveRecord::Base
  attr_accessible :text, :to

  extend Enumerize
  enumerize :to, in: [:en, :ja]

  scope :recent, ->() { order('created_at desc') }
end
