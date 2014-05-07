module ActiveModel
  module AutosaveAssociation
    extend ActiveSupport::Concern

    include ActiveRecord::AutosaveAssociation

    included do
      extend ActiveModel::Callbacks
      define_model_callbacks :save
    end
  end
end
