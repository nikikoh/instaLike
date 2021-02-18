# frozen_string_literal: true

module UserDecorator

  def display_name
    profile&.name || email.split('@').first
  end

end
