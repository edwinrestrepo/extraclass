require 'spec_helper'

describe Category do

  it "is invalid without a name" do
    category = FactoryGirl.build(:category, name: nil)
    expect(category).to have(1).errors_on(:name)
  end

end
