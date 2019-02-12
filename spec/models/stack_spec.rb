describe Stack do
  let(:attributes) do
    {
      # name: "Dustwing",
      # size: "tiny",
      # taxonomy: "Abradacus nonexistus"
    }
  end

  it "is considered valid" do
    expect(Stack.new(attributes)).to be_valid
  end

  # let(:missing_name) { attributes.except(:name) }
  # let(:invalid_size) { attributes.merge(size: "not that big") }
  # let(:missing_species) { attributes.merge(taxonomy: "Abradacus") }
  #
  # it "is invalid without a name" do
  #   expect(Monster.new(missing_name)).not_to be_valid
  # end
  #
  # it "is invalid with an unusual size" do
  #   expect(Monster.new(invalid_size)).not_to be_valid
  # end
  #
  # it "is invalid with a missing species" do
  #   expect(Monster.new(missing_species)).not_to be_valid
  # end
  
end
