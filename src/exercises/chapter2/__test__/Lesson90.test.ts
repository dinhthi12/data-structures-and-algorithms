import Lesson90 from '../Lesson90'

describe('Lesson90: Find the largest positive integer m such that 1 + 2 + … + m < N', () => {
  let lesson: Lesson90

  beforeEach(() => {
    lesson = new Lesson90()
  })

  it('should return 2 for n = 5', () => {
    expect(lesson.solution(5)).toBe(2)
  })

  it('should return 3 for n = 10', () => {
    expect(lesson.solution(10)).toBe(3)
    // Explanation: 1 + 2 + 3 = 6, which is < 10, but adding 4 would exceed 10
  })

  it('should return 4 for n = 15', () => {
    expect(lesson.solution(15)).toBe(4)
    // Explanation: 1 + 2 + 3 + 4 = 10, which is < 15, but adding 5 would exceed 15
  })

  it('should return 5 for n = 20', () => {
    expect(lesson.solution(20)).toBe(5)
    // Explanation: 1 + 2 + 3 + 4 + 5 = 15, which is < 20, but adding 6 would exceed 20
  })

  it('should return 13 for n = 100', () => {
    expect(lesson.solution(100)).toBe(13)
    // Explanation: Sum of first 13 numbers is 91, which is < 100, but adding 14 would exceed 100
  })

  it('should return 0 for n = 1 (smallest case)', () => {
    expect(lesson.solution(1)).toBe(0)
    // Explanation: There is no positive integer m such that the sum is less than 1
  })

  it('should handle large values of n accurately', () => {
    expect(lesson.solution(1000)).toBe(44)
    // Explanation: Sum of first 44 numbers is 990, which is < 1000, but adding 45 would exceed 1000
  })
})
