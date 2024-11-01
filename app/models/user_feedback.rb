# frozen_string_literal: true

module DiscourseUserFeedbacks
  class UserFeedback < ActiveRecord::Base
    validates :rating, presence: true
    validates :feedback_to_id, presence: true
    validates :user_id, presence: true
    validates :review, length: { maximum: 500 }

    # Agrega la validación para buyer_or_seller
    validates :buyer_or_seller, inclusion: { in: %w(buyer seller), message: "%{value} no es una opción válida" }

    def self.create_feedback(opts)
      UserFeedback.create(opts)
    end
  end
end
