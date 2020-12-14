class Employee < ApplicationRecord
    belongs_to :dog
    validates_uniqueness_of :title, :alias
end
