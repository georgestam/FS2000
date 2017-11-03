describe "User registration", js: true do
  
  let(:password){ SecureRandom.hex(10) }
  let(:reference){ FactoryGirl.build :user}
  
  def the_action 
    visit root_path
    find("#login").click
    find("#signup").click
  end 
  
  it 'results in a User being created' do
    the_action
    find("#user_name").set reference.name
    find("#user_email").set reference.email
    find("#user_password").set password
    
    expect {
      find("#signup").click
    }.to change {
      User.count
    }.by(1)
    
  end
  
end