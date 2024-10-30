import Lesson92 from '../Lesson92'

describe('Lesson92 GCD', () => {
  let lesson: Lesson92

  beforeEach(() => {
    lesson = new Lesson92()
  })

  test('should return 1 for GCD of 1 and 1', () => {
    expect(lesson.gcd(1, 1)).toBe(1) // GCD(1, 1) = 1
  })

  test('should return 1 for GCD of 7 and 9', () => {
    expect(lesson.gcd(7, 9)).toBe(1) // GCD(7, 9) = 1
  })

  test('should return 2 for GCD of 2 and 4', () => {
    expect(lesson.gcd(2, 4)).toBe(2) // GCD(2, 4) = 2
  })

  test('should return 6 for GCD of 48 and 18', () => {
    expect(lesson.gcd(48, 18)).toBe(6) // GCD(48, 18) = 6
  })

  test('should return 12 for GCD of 60 and 36', () => {
    expect(lesson.gcd(60, 36)).toBe(12) // GCD(60, 36) = 12
  })

  test('should return 13 for GCD of 91 and 104', () => {
    expect(lesson.gcd(91, 104)).toBe(13) // GCD(91, 104) = 13
  })

  test('should return 25 for GCD of 100 and 75', () => {
    expect(lesson.gcd(100, 75)).toBe(25) // GCD(100, 75) = 25
  });
})
