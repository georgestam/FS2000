RSpec.describe PagesController, type: :controller do

  describe 'landing page' do

    context 'when it is loaded' do 
      
      before {
        get 'index'
      }
      
      it 'gets a 200 response' do
        controller_ok
      end
      
    end
    
  end
  
end 