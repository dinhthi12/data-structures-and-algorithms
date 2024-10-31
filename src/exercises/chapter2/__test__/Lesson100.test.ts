import Lesson100 from '../Lesson100'

describe('Lesson100', () => {
  let lesson: Lesson100

  beforeEach(() => {
    lesson = new Lesson100()
  })

  test('should return two distinct real roots', () => {
    expect(lesson.solution(1, -3, 2)).toEqual([2, 1]) // Roots are 2 and 1 for equation x^2 - 3x + 2 = 0
  })

  test('should return one real double root', () => {
    expect(lesson.solution(1, -2, 1)).toEqual([1]) // Root is 1 for equation x^2 - 2x + 1 = 0
  })

  test('should return two complex roots', () => {
    expect(lesson.solution(1, 2, 5)).toEqual(["-1.00 + 2.00i", "-1.00 - 2.00i"]) // Complex roots for x^2 + 2x + 5 = 0
  })

  test('should handle case where a = 0 (linear equation)', () => {
    expect(lesson.solution(0, 2, -8)).toEqual([4]) // Linear equation 2x - 8 = 0, root is 4
  })

  test('should handle case where b and c are zero', () => {
    expect(lesson.solution(1, 0, 0)).toEqual([-0]) // Equation x^2 = 0, root is 0
  })

  test('should handle a negative coefficient for a', () => {
    expect(lesson.solution(-1, -3, 2)).toEqual(expect.arrayContaining([-3.5615528128088303, 0.5615528128088303])) // Correct roots for -x^2 - 3x + 2 = 0
  })

  test('should handle no solution when both a and b are zero but c is non-zero', () => {
    expect(lesson.solution(0, 0, 5)).toEqual([]) // No solution for constant-only equation
  })

  test('should handle infinite solutions when all coefficients are zero', () => {
    expect(lesson.solution(0, 0, 0)).toEqual(['Infinite solutions']) // Infinite solutions when a, b, c are all zero
  })
})
