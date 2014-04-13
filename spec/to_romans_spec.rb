require 'to_romans'


describe "Arabic Numbers to Roman Numerals" do

  context "simple roman numerals" do

    context "it should return" do

      it "'I' given 1" do
        expect(1.to_romans).to eq "I"
      end

      it "'IV' given 4" do
        expect(4.to_romans).to eq "IV"
      end

      it "'V' given 5" do
        expect(5.to_romans).to eq "V"
      end

      it "'IX' given 9" do
        expect(9.to_romans).to eq "IX"
      end

      it "'X' given 10" do
        expect(10.to_romans).to eq "X"
      end

    end

    context "complex roman numerals" do

      context "it should return" do
        it "'II' given 2" do
          expect(2.to_romans).to eq "II"
        end

        it "'III' given 3" do
          expect(3.to_romans).to eq "III"
        end

        it "'VI' given 6" do
          expect(6.to_romans).to eq "VI"
        end
      end

    end

  end

end