require '././app.rb'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Testing form' do
  scenario 'entering two players names into one form' do
    visit('/')
    fill_in('Player1_name', with: 'Tom')
    fill_in('Player2_name', with: 'Harry')
    click_button "Submit"
    expect(page).to have_text("Welcome Tom and Harry")
  end
end
