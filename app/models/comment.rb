class Comment < ApplicationRecord
    validates :fed_id, :comment, presence: true
    validates :fed_id, numericality: { only_integer: true}
end
