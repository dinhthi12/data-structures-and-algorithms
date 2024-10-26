import Lesson89 from '../Lesson89'

describe('Lesson89: Sum of positive odd integers less than N', () => {
  const lesson = new Lesson89()

  it('should return 0 for n = 1 (no odd integers less than 1)', () => {
    expect(lesson.solution(1)).toBe(0)
  })

  it('should return 1 for n = 2 (only odd integer is 1)', () => {
    expect(lesson.solution(2)).toBe(1)
  })

  it('should return 4 for n = 4 (odd integers: 1, 3)', () => {
    expect(lesson.solution(4)).toBe(4)
  })

  it('should return 9 for n = 6 (odd integers: 1, 3, 5)', () => {
    expect(lesson.solution(6)).toBe(9)
  })

  it('should return 16 for n = 8 (odd integers: 1, 3, 5, 7)', () => {
    expect(lesson.solution(8)).toBe(16)
  })

  it('should return 25 for n = 10 (odd integers: 1, 3, 5, 7, 9)', () => {
    expect(lesson.solution(10)).toBe(25)
  })

  it('should return 0 for n = 0 (no positive odd integers less than 0)', () => {
    expect(lesson.solution(0)).toBe(0)
  })

  it('should handle large values of n', () => {
    expect(lesson.solution(100)).toBe(2500) // Sum of odd integers less than 100
  })
})
