require "spec_helper"
require "zombie"

describe Zombie do

  let(:zombie) { Zombie.new }
  subject { zombie }

  it "is named Ash" # this is a pending test

  xit "is named Ash" do # another way to indicate a pending test
  end

  it "is named Ash" do # one more way to indicate a pending test
    pending
  end

  it "is named Ash" do
    zombie.name.should == "Ash"
  end

  it "has no brains" do
    zombie.brains.should < 1
  end

  it "is hungry" do
    zombie.should be_hungry #predicate matcher
  end

  it "responds to name" do
    subject.should respond_to(:name) # subject is the class name instantiated
    # Note: The above works onlly if the describe block has a class in it
  end

  it "responds to brains" do
    # Even simpler to refer to the class's instance variable:
    should respond_to(:brains)
  end

  #Using it's syntax
  its(:name) { should == "Ash" }

  # Nesting describes
  describe "when hungry" do
    it "craves brains" do
      describe "with a veggie preference" do
        it "still craves brains" do
        end
        it "prefers vegan brains" do
        end
      end
    end
  end
end
