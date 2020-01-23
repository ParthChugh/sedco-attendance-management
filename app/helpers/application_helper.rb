# frozen_string_literal: true

module ApplicationHelper # rubocop:todo Style/Documentation
  def auth_info()
    if current_user          
      user_data = {
        current_user: current_cached_user,            
      }
    end
  end
end
