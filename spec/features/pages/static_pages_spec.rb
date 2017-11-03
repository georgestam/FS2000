describe "Static pages" do
  
  context "when user is not logged in" do

    describe "Home page" do
      
      it 'finds selector' do
        visit root_path
        expect(page).to have_selector :css, '.front-page'
      end
      
    end
    
    describe "Support" do
      
      it 'finds selector in page' do
        visit root_path
        find("#support").click
        expect(page).to have_selector :css, '#support-site'
      end
    
    end
  
  end 
  
  context "when user is logged in" do
    
    sign_as
    
    describe "Support" do
    
      it 'finds selector in page' do
        visit support_path
        expect(page).to have_selector :css, '#support-site'
      end
      
    end
    
    sign_as
    
    describe "tutorials" do
    
      it 'finds selector in page' do
        visit tutorials_path
        expect(page).to have_selector :css, '#tutorials'
      end
      
    end
    
    describe "downloads" do
    
      it 'finds selector in page' do
        visit downloads_path
        expect(page).to have_selector :css, '#downloads-site'
      end
      
    end
    
    describe "feedback" do
    
      it 'finds selector in page' do
        visit form_path
        expect(page).to have_selector :css, '#feedback-site'
      end
      
    end
    
    describe "forum" do
    
      it 'finds selector in page' do
        visit forum_path
        expect(page).to have_selector :css, '#forum-site'
      end
      
    end
    
  end 

end