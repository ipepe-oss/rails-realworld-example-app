# frozen_string_literal: true

module RequestSpecsHelpers
  def json_body
    ActiveSupport::JSON.decode(response.body)
  end
end
