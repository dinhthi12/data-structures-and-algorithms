import Lesson14 from '../Lesson14'

describe('Lesson14 Solution', () => {
  let lesson: Lesson14

  beforeEach(() => {
    lesson = new Lesson14()
  })

  test('should return 1 for x = 1, n = 0', () => {
    expect(lesson.solution(1, 0)).toBe(1) // 1^2 = 1
  })

  test('should return 2 for x = 1, n = 1', () => {
    expect(lesson.solution(1, 1)).toBe(2) // 1 + 1^3 = 1 + 1 = 2
  })

  test('should return 2 for x = 2, n = 0', () => {
    expect(lesson.solution(2, 0)).toBe(2) // 2^1 = 2
  })

  test('should return 10 for x = 2, n = 1', () => {
    expect(lesson.solution(2, 1)).toBe(10) // 2 + 2^3 = 2 + 8 = 10
  })

  test('should return 42 for x = 2, n = 2', () => {
    expect(lesson.solution(2, 2)).toBe(42) // 2 + 2^3 + 2^5 = 2 + 8 + 32 = 70
  })

  test('should return 273 for x = 3, n = 2', () => {
    expect(lesson.solution(3, 2)).toBe(273) // 3 + 3^3 + 3^5 = 3 + 27 + 243 = 273
  })

  test('should return 17476 for x = 4, n = 3', () => {
    expect(lesson.solution(4, 3)).toBe(17476) // 4 + 4^3 + 4^5 + 4^7 = 4 + 64 + 1024 + 16384 = 17476
  })
})
