let(:stack) { Monster.find_by(name: "#storyname") }

 it "adds a stack" do
   expect(stack).to_not be_nil
 end

 it "redirects to the user's page with the added stack" do
   expect(current_path).to eq(stack_path(stack))
 end

 it "displays the stack's name" do
   within "h1" do
    expect(page).to have_content(stack.name)
  end
end
