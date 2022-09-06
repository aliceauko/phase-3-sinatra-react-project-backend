class Employee < ActiveRecord::Base
    belongs_to :boss
end