import Lesson10 from '../Lesson10'

describe('Lesson10: Calculate T(x, n) = x^n (x raised to the power of n)', () => {
  let lesson: Lesson10

  beforeEach(() => {
    lesson = new Lesson10()
  })

  it('should return 1 for any x when n = 0', () => {
    expect(lesson.solution(2, 0)).toBe(1)  // 2^0 = 1
    expect(lesson.solution(10, 0)).toBe(1) // 10^0 = 1
    expect(lesson.solution(-5, 0)).toBe(1) // (-5)^0 = 1
  })

  it('should return x for n = 1', () => {
    expect(lesson.solution(3, 1)).toBe(3)  // 3^1 = 3
    expect(lesson.solution(7, 1)).toBe(7)  // 7^1 = 7
  })

  it('should return the correct result for positive n', () => {
    expect(lesson.solution(2, 3)).toBe(8)   // 2^3 = 8
    expect(lesson.solution(5, 2)).toBe(25)  // 5^2 = 25
  })

  it('should return the correct result for negative base and even exponent', () => {
    expect(lesson.solution(-2, 4)).toBe(16)  // (-2)^4 = 16
  })

  it('should return the correct result for negative base and odd exponent', () => {
    expect(lesson.solution(-2, 3)).toBe(-8)  // (-2)^3 = -8
  })

  it('should return the correct result for fractional base', () => {
    expect(lesson.solution(0.5, 2)).toBe(0.25)  // 0.5^2 = 0.25
  })
})
