describe "Static pages", js: true do
  
  context "when user is not logged in" do

    describe "Home page" do
      
      it 'finds selector' do
        visit root_path
        expect(page).to have_selector :css, '#front-page'
      end
      
      it 'returns status code 200' do
        visit root_path
        page_ok
      end
    end
    
    describe "Support" do
      
      it 'finds selector in page' do
        visit root_path
        find(".support").click
        expect(page).to have_selector :css, '#support'
      end
    
    end
  
  end 
  
  context "when user is logged in" do
    
    describe "Support" do
      
      sign_as
    
      it 'finds selector in page' do
        visit root_path
        find("#dashboard").click
        find("#support").click
        expect(page).to have_selector :css, '#support'
      end
      
    end
    
    describe "Support" do
      
      sign_as
    
      it 'finds selector in page' do
        visit root_path
        find("#dashboard").click
        find("#support").click
        expect(page).to have_selector :css, '#support'
      end
      
    end
    
  end 

end