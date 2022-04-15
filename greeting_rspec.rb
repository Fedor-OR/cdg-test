require "rspec"
require "./HM_greeting"

RSpec.describe "HM_greeting" do
    it "returns greeting message if user older than 18" do
        expect(greeting(18)).to eq("самое время заняться делом!")
        end
     
    it "returns asks to wait if age is under 18" do
        expect(greeting(17)).to eq("Тебе меньше 18 лет, но начать учиться программировать никогда не рано.")
        end
end