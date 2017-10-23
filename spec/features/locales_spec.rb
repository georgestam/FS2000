describe 'Locale switching when landing page is in English' do
  
  before {
    visit root_path(:en)
  }
    
  it 'changes to locale in Arabic when Arabic button is clicked' do
    expect{ 
      find("#change-to-arabic").click 
    }.to change { 
      page.current_path 
    }.from("/en").to("/ar").and change {
      find('html')[:lang] 
    }.from("en").to("ar")

    page_ok
    
  end
  
end