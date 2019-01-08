require "spec_helper"

feature "Contact Creation" do
   scenario "allows access to contact page" do
     visit '/contacts'

     expect(page).to have_content 'Contact Us' # case sensetive 
                                               # (in order to not have sensetivity we will
                                               # use i18n... )
   end #scenario
 
end #feature