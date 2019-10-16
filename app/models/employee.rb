class Employee < ApplicationRecord
    belongs_to :dog

    validates :alias, uniqueness: true, presence: true
    validates :title, uniqueness: true, presence: true
end
