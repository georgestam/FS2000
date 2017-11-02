describe 'User Logging in', js: true do
  
  let(:password){ SecureRandom.hex(10) }
  let(:user){ FactoryGirl.create :user, password: password}
  
  def the_action
    visit root_path
    find("#login").click
  end 
  
  it 'results in a User being logged' do
    the_action
    find("#user_email").set user.email
    find("#user_password").set password
    
    expect {
      find("#login").click
    }.to change {
      User.last.sign_in_count
    }.by(1)
  end
  
end