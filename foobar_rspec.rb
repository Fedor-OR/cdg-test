require "rspec"
require "./HM_foobar"

RSpec.describe "HM_foobar" do
    it "если массив содержит число 20 то возвращает второе число" do
        expect(foobar([18,20])).to eq(20)
        end
        
    it "если массив не содержит ичсло 20, возвращает сумму" do
            expect(foobar([23,74])).to eq(97)
        end
    end
    
    