import Lesson9 from '../Lesson9'

describe('Lesson9: Calculate T(n) = 1 x 2 x 3 ... x n (Factorial of n)', () => {
  const lesson = new Lesson9()

  it('should return 1 for n = 0 (Factorial of 0)', () => {
    expect(lesson.solution(0)).toBe(1)  // 0! is defined as 1
  })

  it('should return 1 for n = 1', () => {
    expect(lesson.solution(1)).toBe(1)  // 1! = 1
  })

  it('should return 2 for n = 2', () => {
    expect(lesson.solution(2)).toBe(2)  // 2! = 2
  })

  it('should return 6 for n = 3', () => {
    expect(lesson.solution(3)).toBe(6)  // 3! = 6
  })

  it('should return 24 for n = 4', () => {
    expect(lesson.solution(4)).toBe(24)  // 4! = 24
  })

  it('should return 120 for n = 5', () => {
    expect(lesson.solution(5)).toBe(120)  // 5! = 120
  })

  it('should return 720 for n = 6', () => {
    expect(lesson.solution(6)).toBe(720)  // 6! = 720
  })

  it('should return 5040 for n = 7', () => {
    expect(lesson.solution(7)).toBe(5040)  // 7! = 5040
  })
})
