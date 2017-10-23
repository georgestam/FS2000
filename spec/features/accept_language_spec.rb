describe "extract locale" do
  
  context "when user has a browser setup in English" do
  
    let(:accept_language){ "en-US,en;q=0.8,es-419;q=0.6,es;q=0.4,ca;q=0.2,af;q=0.2" }
      
    it "parses Accept-Language header into locale string en" do
      expect(HttpAcceptLangParser.parse(accept_language)).to eq :en
    end
  
  end
  
  context "when user has a browser setup in Arabic" do
  
    let(:accept_language){ "ar-sa,ar;q=0.3" }
      
    it "parses Accept-Language header into locale string ar" do
      expect(HttpAcceptLangParser.parse(accept_language)).to eq :ar
    end
  
  end
    
end