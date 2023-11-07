class Chequeo < ApplicationRecord
    belongs_to :dog
    validates :descripcion, presence: true
    validates :fecha, presence: true
end
