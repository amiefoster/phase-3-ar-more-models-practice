class Plant < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :people, through: :plant_parenthoods
    has_many :waterings
    has_many :people, through: :waterings
    has_many :plant_categories
    has_many :categories, through: :plant_categories

end
