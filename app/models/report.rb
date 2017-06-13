class Report < ApplicationRecord
	validates :data_type, presence: true
	validates :date_from, presence: true
	validates :date_to, presence: true
end
