# frozen_string_literal: true

require 'dry-auto_inject'
require 'dry-container'

class InversionContainer
  extend Dry::Container::Mixin

  register('test_service') do
    TestService.new
  end
end

Inject = Dry::AutoInject(InversionContainer)
