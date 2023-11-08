class Chequeo < ApplicationRecord
    belongs_to :dog
    validates :descripcion, presence: true
    validates :fecha, presence: true

    validate :datetime_not_in_future

    private
    def datetime_not_in_future
        if fecha? && fecha > Time.now
          errors.add(:fecha, "no debe ser futura")
        end
    end

end
