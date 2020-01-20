# frozen_string_literal: true

# rubocop:todo Style/Documentation
class HelloWorldController < ApplicationController
  layout 'hello_world'

  def index
    @hello_world_props = { name: 'Stranger' }
  end
end
# rubocop:enable Style/Documentation
