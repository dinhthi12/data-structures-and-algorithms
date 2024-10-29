import Lesson93 from '../Lesson93'

describe('Lesson93 Solution', () => {
  let lesson: Lesson93

  beforeEach(() => {
    lesson = new Lesson93()
  })

  test('should return false for n = 1 (not prime)', () => {
    expect(lesson.solution(1)).toBe(false)
  })

  test('should return true for n = 2 (prime)', () => {
    expect(lesson.solution(2)).toBe(true)
  })

  test('should return true for n = 3 (prime)', () => {
    expect(lesson.solution(3)).toBe(true)
  })

  test('should return false for n = 4 (not prime)', () => {
    expect(lesson.solution(4)).toBe(false)
  })

  test('should return true for n = 5 (prime)', () => {
    expect(lesson.solution(5)).toBe(true)
  })

  test('should return false for n = 9 (not prime)', () => {
    expect(lesson.solution(9)).toBe(false)
  })

  test('should return true for n = 13 (prime)', () => {
    expect(lesson.solution(13)).toBe(true)
  })

  test('should return false for n = 15 (not prime)', () => {
    expect(lesson.solution(15)).toBe(false)
  })

  test('should return true for n = 17 (prime)', () => {
    expect(lesson.solution(17)).toBe(true)
  })

  test('should return true for a large prime number, n = 97', () => {
    expect(lesson.solution(97)).toBe(true)
  })

  test('should return false for a large non-prime number, n = 100', () => {
    expect(lesson.solution(100)).toBe(false)
  })
})
