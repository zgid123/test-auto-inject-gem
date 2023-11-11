class TestsController < ApplicationController
  include Inject[
    test_service: 'test_service'
  ]

  def index
    test_service.call(test: 'test')
    p 'test'

    render json: {
      message: 'ok'
    }
  end
end
