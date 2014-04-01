require 'spec_helper'

describe Opscode do
  it 'has a version number' do
    expect(Opscode::VERSION).not_to be nil
  end
end
