require 'spec_helper'

describe Answer do

  it "is invalid without a description" do
    answer = FactoryGirl.build(:answer, description: nil)
    expect(answer).to have(1).errors_on(:description)
  end

end
