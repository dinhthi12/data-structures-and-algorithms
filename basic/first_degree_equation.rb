=begin
* Solve first order equations
=end

def solution(a, b)
  if a == 0
    if b == 0
      return "Phương trình vô số nghiệm"
    else
      return "Phương trình vô nghiệm"
    end
  else
    x = -b.to_f / a
    return "Nghiệm của phương trình là x = #{x}"
  end
end
