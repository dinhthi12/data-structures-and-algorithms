# frozen_string_literal: true

# Nhập vào thánɡ củɑ 1 năm. Cho biết thánɡ thuộc quý mấy tronɡ năm

def solution(month)
  case month
  when 1, 2, 3
    1
  when 4, 5, 6
    2
  when 7, 8, 9
    3
  when 10, 11, 12
    4
  end
end
