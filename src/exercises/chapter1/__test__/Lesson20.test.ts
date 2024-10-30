import Lesson20 from '../Lesson20'

describe('Lesson20 Solution', () => {
  let lesson: Lesson20

  beforeEach(() => {
    lesson = new Lesson20()
  })

  test('should return [1] for n = 1', () => {
    expect(lesson.solution(1)).toEqual([1])
  })

  test('should return [1, 2] for n = 2', () => {
    expect(lesson.solution(2)).toEqual([1, 2])
  })

  test('should return [1, 3] for n = 3', () => {
    expect(lesson.solution(3)).toEqual([1, 3])
  })

  test('should return [1, 2, 4, 8] for n = 8', () => {
    expect(lesson.solution(8)).toEqual([1, 2, 4, 8])
  })

  test('should return [1, 2, 3, 4, 6, 12] for n = 12', () => {
    expect(lesson.solution(12)).toEqual([1, 2, 3, 4, 6, 12])
  })

  test('should return [1, 5, 25] for n = 25', () => {
    expect(lesson.solution(25)).toEqual([1, 5, 25])
  })

  test('should return [1, 2, 7, 14] for n = 14', () => {
    expect(lesson.solution(14)).toEqual([1, 2, 7, 14])
  });
})
