# frozen_string_literal: true

DiscourseUserFeedbacks::Engine.routes.draw do
  resources :user_feedbacks, constraints: DiscourseUserFeedbacks::UserFeedbacksConstraint.new
  delete 'user_feedbacks/:id', to: 'user_feedbacks#destroy'
end
