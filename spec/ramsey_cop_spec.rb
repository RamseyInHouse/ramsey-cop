require "spec_helper"
require "rubocop"

RSpec.describe RamseyCop do
  it "has a version number" do
    expect(RamseyCop::VERSION).not_to be nil
  end

  it "has a valid config" do
    expect { RuboCop::ConfigLoader.load_file("./default.yml") }.to_not raise_error
  end
end
