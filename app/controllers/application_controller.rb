# frozen_string_literal: true

# rubocop:todo Style/Documentation
class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
end
# rubocop:enable Style/Documentation
