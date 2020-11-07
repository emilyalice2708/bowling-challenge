feature 'User told to enter numbers' do
  before do
    visit('/')
  end

  scenario 'User tries to input non-number score' do
    fill_in :bowl_input, with: "e"
    click_button("bowl")
    expect(page.find('#current_score')).to have_content "That's not a number!"
  end
end