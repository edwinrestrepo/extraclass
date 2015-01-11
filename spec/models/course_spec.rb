require 'spec_helper'

describe Course do

  context "valid name" do

    it "is invalid without a name" do
      course = FactoryGirl.build(:course, name: nil)
      expect(course).to have(2).errors_on(:name)
    end

    it "is invalid with a name too short" do
      course = FactoryGirl.build(:course, name: "Hola")
      expect(course).to have(1).errors_on(:name)
    end


  end

  context "valid description" do

    it "is invalid without a description" do
      course = FactoryGirl.build(:course, description: nil)
      expect(course).to have(2).errors_on(:description)
    end

    it "is invalid with a title too short" do
      course = FactoryGirl.build(:course, description: "Hola")
      expect(course).to have(1).errors_on(:description)
    end

  end
end
