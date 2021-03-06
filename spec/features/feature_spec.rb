require 'pg'

# As a Maker
# So that I can let people know what I am doing
# I want to post a message (peep) to chitter
#
feature 'Adding peeps' do
  scenario 'A user can be prompted to add a peep' do
    visit('/')
    click_link('Add a peep')
    expect(page).to have_content "Please tell me your peep:"
  end

  scenario 'A user can add a peep' do
    visit('/')
    click_link('Add a peep')
    fill_in('peepbox', with: 'This is a test peep.')
    click_button('Post it!')
    click_link('View peeps')
    expect(page).to have_content "This is a test peep."
  end
end


# As a maker
# So that I can see what others are saying
# I want to see all peeps in reverse chronological order
#

feature 'Viewing peeps' do
  scenario 'A user can see peeps already written' do
    visit('/')
    click_link('View peeps')
    expect(page).to have_content "Here are the things"
  end

# As a Maker
# So that I can better appreciate the context of a peep
# I want to see the time at which it was made
#
  scenario 'can see timestamp of peep' do
    visit('/')
    click_link('Add a peep')
    fill_in('peepbox', with: 'This is a test peep.')
    click_button('Post it!')
    click_link('View peeps')
    expect(page).to have_content "Posted"
  end
end
# As a Maker
# So that I can post messages on Chitter as me
# I want to sign up for Chitter
#
feature "Sign in feature" do
  scenario 'can log in' do
    visit('/')
    click_button('Sign in')
    expect(page).to have_content "Please enter your username and password"
  end
end
# HARDER
#
# As a Maker
# So that only I can post messages on Chitter as me
# I want to log in to Chitter
#
# As a Maker
# So that I can avoid others posting messages on Chitter as me
# I want to log out of Chitter
#
# ADVANCED
#
# As a Maker
# So that I can stay constantly tapped in to the shouty box of Chitter
# I want to receive an email if I am tagged in a Peep
