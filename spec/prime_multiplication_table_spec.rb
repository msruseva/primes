require 'spec_helper'

RSpec.describe PrimeMultiplicationTable do
  describe "#sieve" do
    it "returns array with five prime numbers" do
      table = PrimeMultiplicationTable.new(5)

      expect(table.sieve(15).take(5)).to eq([2, 3, 5, 7, 11])
    end
  end

  describe "#create_table" do
    it 'returns table with multiplication of the first three prime numbers' do
      table = PrimeMultiplicationTable.new(3)

      expect { table.create_table }.to output(<<-TABLE).to_stdout
+---+----+----+----+
|   | 2  | 3  | 5  |
+---+----+----+----+
| 2 | 4  | 6  | 10 |
| 3 | 6  | 9  | 15 |
| 5 | 10 | 15 | 25 |
+---+----+----+----+
        TABLE
    end
  end
end
