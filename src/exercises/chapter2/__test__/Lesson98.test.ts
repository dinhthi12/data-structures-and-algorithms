import Lesson98 from '../Lesson98'

describe('Lesson98 solution', () => {
  let lesson: Lesson98

  beforeEach(() => {
    lesson = new Lesson98()
  })

  test('should solve the system of equations with a unique solution', () => {
    const result = lesson.solution(1, 2, 3, 4, 5, 6)
    expect(result).toEqual({ x: -1, y: 2 }) // Example calculation
  })

  test('should solve the system of equations with a different unique solution', () => {
    const result = lesson.solution(2, 3, 8, 1, 2, 3)
    expect(result).toEqual({ x: 7, y: -2 }) // Example calculation
  })

  test('should return a message for no unique solution (parallel lines)', () => {
    const result = lesson.solution(2, 4, 6, 1, 2, 3)
    expect(result).toBe('No unique solution exists (either no solution or infinite solutions).')
  })

  test('should return a message for infinite solutions (identical lines)', () => {
    const result = lesson.solution(1, 1, 2, 2, 2, 4)
    expect(result).toBe('No unique solution exists (either no solution or infinite solutions).')
  })

  test('should handle a case with negative coefficients', () => {
    const result = lesson.solution(-1, 2, 3, 4, -5, 6)
    expect(result).toEqual({ x: 9, y: 6 }) // Example calculation
  })

  test('should handle a case where c and f are zero', () => {
    const result = lesson.solution(2, 3, 0, 4, 5, 0)
    expect(result).toEqual({ x: -0, y: -0 }) // Example calculation
  })
})
