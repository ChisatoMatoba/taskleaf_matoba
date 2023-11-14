# frozen_string_literal: true

# Represents task data as an ActiveRecord model.
class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
end
