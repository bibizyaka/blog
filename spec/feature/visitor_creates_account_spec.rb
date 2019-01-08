require "spec_helper"

feature "Account Creation" do
   scenario "allows guest to reach sign up page" do
     visit new_user_registration_path # from route table (helpers)

     expect(page).to have_content I18n.t('accounts.sign_up') #Case sensetive 
                                               # (in order to not have sensetivity we will
                                               # use I18n... )
   end #scenario

   scenario "allows user to create account" do
    visit new_user_registration_path 
    
      fill_in 'Email', with: 'testing@test.com'
      fill_in 'Username', with: 'testing sign up page'
      fill_in 'Password', with: '123456'
      fill_in 'Password confirmation', with: '123456'
    
    click_button 'Sign up'
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
   end
 
end #feature