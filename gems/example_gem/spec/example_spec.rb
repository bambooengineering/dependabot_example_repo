# frozen_string_literal: true

require 'example_gem'

RSpec.describe ExampleGem do
  it "has the answer" do
    expect(ExampleGem::ANSWER).to be(42)
  end
end
