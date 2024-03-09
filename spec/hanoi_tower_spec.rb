RSpec.describe HanoiTower do
  describe "#move" do
    it "prints the steps to move disks from source to target" do
      hanoi = HanoiTower.new
      expect { hanoi.move(3, 'A', 'C', 'B') }.to output(
        "Move disk 1 from A to C\n" +
        "Move disk 2 from A to B\n" +
        "Move disk 1 from C to B\n" +
        "Move disk 3 from A to C\n" +
        "Move disk 1 from B to A\n" +
        "Move disk 2 from B to C\n" +
        "Move disk 1 from A to C\n"
      ).to_stdout
    end
  end
end
