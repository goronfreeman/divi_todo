class Item < ActiveRecord::Base
  enum state: [:not_started, :in_progress, :complete]

  belongs_to :list

  validates :title, :state, presence: true
end
