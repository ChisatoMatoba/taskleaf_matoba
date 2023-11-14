# frozen_string_literal: true

# ApplicationRecord is the abstract base class for all models in the application.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
