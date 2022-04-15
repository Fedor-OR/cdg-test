require "rspec"
require "./HM_CS"

RSpec.describe "ends" do
    it "если слово заканчивается на CS, то возвращает 2 в степени" do
        expect(ends("ECS")).to eq(8)
        end
     
    it "если слово заканчивается на что-то другое, то покажет перевернутое слово" do
        expect(ends("tgr")).to eq("rgt")
        end
end