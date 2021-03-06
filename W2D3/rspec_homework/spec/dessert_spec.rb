require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", :name=>"Remy") }
  subject(:dessert) {Dessert.new("mustard", 3, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("mustard")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(3)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("beans", "greens", "LaCroix")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to be_empty
      dessert.add_ingredient("ketchup")
      expect(dessert.ingredients).to include("ketchup")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(dessert.ingredients).to be_empty
      dessert.add_ingredient("ketchup")
      dessert.add_ingredient("mustard")
      dessert.add_ingredient("hotdogs")
      dessert.mix!
      expect(dessert.ingredients).to_not be(["ketchup", "mustard", "hotdogs"])
    end

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(2)).to eq(1)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {dessert.eat(3000)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive("titleize").and_return("Chef Remy the Great Baker")
      expect(dessert.serve).to eq("Chef Remy the Great Baker has made 3 mustards!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
