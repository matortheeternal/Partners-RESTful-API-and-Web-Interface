require 'active_support/concern'

module Filterable
  extend ActiveSupport::Concern

  module ClassMethods
    def filter(filtering_params)
      results = self.where(nil)
      filtering_params.each do |key, value|
        results = results.where(key => value)
      end
      results
    end
  end
end