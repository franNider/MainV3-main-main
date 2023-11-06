class Vacuna < ApplicationRecord
    belongs_to :dog
    validates :nombre, presence: true
    validates :fecha, presence: true
end
