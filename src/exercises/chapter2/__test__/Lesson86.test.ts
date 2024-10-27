import Lesson86 from '../Lesson86'

describe('Lesson86: Sum of Cubes', () => {
  let lesson: Lesson86

  beforeEach(() => {
    lesson = new Lesson86()
  })

  it('should return 1 for n = 1', () => {
    expect(lesson.solution(1)).toBe(1) // 1^3 = 1
  })

  it('should return 9 for n = 2', () => {
    expect(lesson.solution(2)).toBe(9) // 1^3 + 2^3 = 1 + 8 = 9
  })

  it('should return 36 for n = 3', () => {
    expect(lesson.solution(3)).toBe(36) // 1^3 + 2^3 + 3^3 = 1 + 8 + 27 = 36
  })

  it('should return 100 for n = 4', () => {
    expect(lesson.solution(4)).toBe(100) // 1^3 + 2^3 + 3^3 + 4^3 = 1 + 8 + 27 + 64 = 100
  })

  it('should return 225 for n = 5', () => {
    expect(lesson.solution(5)).toBe(225) // 1^3 + 2^3 + 3^3 + 4^3 + 5^3 = 1 + 8 + 27 + 64 + 125 = 225
  })

  it('should return 0 for n = 0', () => {
    expect(lesson.solution(0)).toBe(0) // The sum of cubes for 0 is 0.
  })
})
