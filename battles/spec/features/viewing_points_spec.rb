feature 'view hit points' do
    scenario 'view player 2 points' do
        visit('/')
        fill_in :Player1_name, with: 'Oli'
        fill_in :Player2_name, with: 'Emily'
        click_button("Submit")
        expect(page).to have_content('Emily: 10HP')
    end
end