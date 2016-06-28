class CoffeeBean < ActiveRecord::Base
  belongs_to :roaster
  belongs_to :origin
  has_one :tasting_note

  validates :name, presence: true
  validates :roasted_on, presence: true,
            if: :roaster_present?

  private

  def roaster_present?
    roaster.present?
  end

end
