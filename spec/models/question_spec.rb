require 'spec_helper'

describe Question do

  it "is invalid without a description" do
    question = FactoryGirl.build(:question, description: nil)
    expect(question).to have(1).errors_on(:description)
  end

end
