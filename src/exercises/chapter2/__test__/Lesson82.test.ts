import Lesson82 from '../Lesson82'

describe('Lesson82 - theLargestNumber', () => {
  const lesson82 = new Lesson82()

  test('should return the largest number when a is the largest', () => {
    expect(lesson82.theLargestNumber(5, 3, 1)).toBe(5)
  })

  test('should return the largest number when b is the largest', () => {
    expect(lesson82.theLargestNumber(2, 7, 4)).toBe(7)
  })

  test('should return the largest number when c is the largest', () => {
    expect(lesson82.theLargestNumber(3, 2, 8)).toBe(8)
  })

  test('should return the number when all are equal', () => {
    expect(lesson82.theLargestNumber(4, 4, 4)).toBe(4)
  })

  test('should return the largest negative number', () => {
    expect(lesson82.theLargestNumber(-5, -2, -8)).toBe(-2)
  })
})