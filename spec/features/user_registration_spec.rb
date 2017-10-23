describe "User registration" do
  
  let(:reference){ FactoryGirl.build :user}
  
  before {
    visit root_path
  }
  
  it 'results in a User being created' do
    
    find("#user_name").set reference.name
    find("#user_email").set reference.email
    
    expect {
      find("#register").click
    }.to change {
      User.count
    }.by(1)
    
  end
  
end