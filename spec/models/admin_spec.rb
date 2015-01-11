require 'spec_helper'

describe Admin do

  it "is invalid without an email" do
    admin = FactoryGirl.build(:admin, email: nil)
    expect(admin).to have(1).errors_on(:email)
  end

  it "is invalid if duplicate" do
    admin1 = FactoryGirl.create(:admin)
    admin2 = FactoryGirl.build(:admin, email: admin1.email)
    expect(admin2).to have(1).errors_on(:email)
  end

end
