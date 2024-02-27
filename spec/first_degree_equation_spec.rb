require_relative '../basic/first_degree_equation'

RSpec.describe "first_degree_equation" do
  it "trả về nghiệm của phương trình" do
    expect(solution(2, 4)).to eq("Nghiệm của phương trình là x = -2.0")
  end

  it "trả về thông báo phương trình vô nghiệm" do
    expect(solution(0, 4)).to eq("Phương trình vô nghiệm")
  end

  it "trả về thông báo phương trình có vô số nghiệm" do
    expect(solution(0, 0)).to eq("Phương trình vô số nghiệm")
  end
end
