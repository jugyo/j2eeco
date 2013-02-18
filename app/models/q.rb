class Q < ActiveRecord::Base
  attr_accessible :text, :to

  extend Enumerize
  enumerize :to, in: [:en, :ja]

  scope :recent, ->() { order('created_at desc') }

  after_create ->(q) { TweetWorker.perform_async(q.id) }

  validates :text, length: {maximum: 140}
end
