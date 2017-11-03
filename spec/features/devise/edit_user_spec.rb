describe 'Edit user attributes', js: true do 
  
  def the_action
    visit root_path
    find("#dashboard").click
    find("#account").click
  end 

  context "when user is singed in" do
    
    sign_as
    
    let!(:reference){ FactoryGirl.build :user}
    
    it 'updates user fields' do
      the_action
      find("#user_name").set reference.name
      find("#user_email").set reference.email
      
      expect {
      find("#update-edit").click
      }.to change {
        user.reload.name
      }.from(user.name).to(reference.name).and change {
        user.reload.email
      }.from(user.email).to(reference.email)
    end
      
  end
  
end
