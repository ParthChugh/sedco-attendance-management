# frozen_string_literal: true

# rubocop:todo Style/Documentation
class HelloWorldController < ApplicationController
  def index
    @hello_world_props = { name: 'Stranger' }
    # render "hello_world/index"
  end
end
# rubocop:enable Style/Documentation
