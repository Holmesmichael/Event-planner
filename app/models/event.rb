class Event < ApplicationRecord
    belongs_to :user
    default_scope -> { order(created_at: :desc) }
    validates :content, length: { maximum: 250 },
    presence: true
end
