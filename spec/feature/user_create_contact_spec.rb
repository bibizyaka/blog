require "spec_helper"

feature "Contact Creation" do
   scenario "allows access to contact page" do
     visit '/contacts'

     expect(page).to have_content I18n.t('contacts.contact_us') #Case sensetive 
                                               # (in order to not have sensetivity we will
                                               # use i18n... )
   end #scenario

   scenario "allows user to create contact" do
    visit '/contacts'
    #within("#contacts") do
      fill_in 'Email', with: 'abra@abra.com'
      fill_in 'Text', with: 'testing capybara'
    #end
    click_button 'Send Message'
    expect(page).to have_content 'Message Sent!'
   end
 
end #feature