class Inventory < ApplicationRecord
	has_many :notifications, dependent: :destroy
end
