import Lesson99 from '../Lesson99'

describe('Lesson99', () => {
  let lesson99: Lesson99

  beforeEach(() => {
    lesson99 = new Lesson99()
  })

  test('should sort numbers in ascending order when all are distinct', () => {
    console.log = jest.fn() // Mock console.log
    lesson99.solution(3, 1, 2)
    expect(console.log).toHaveBeenCalledWith(1, 2, 3)
  })

  test('should handle already sorted input', () => {
    console.log = jest.fn()
    lesson99.solution(1, 2, 3)
    expect(console.log).toHaveBeenCalledWith(1, 2, 3)
  })

  test('should sort when the largest number is first', () => {
    console.log = jest.fn()
    lesson99.solution(3, 2, 1)
    expect(console.log).toHaveBeenCalledWith(1, 2, 3)
  })

  test('should sort when two numbers are equal', () => {
    console.log = jest.fn()
    lesson99.solution(3, 3, 1)
    expect(console.log).toHaveBeenCalledWith(1, 3, 3)
  })

  test('should sort when all numbers are the same', () => {
    console.log = jest.fn()
    lesson99.solution(2, 2, 2)
    expect(console.log).toHaveBeenCalledWith(2, 2, 2)
  })

  test('should handle negative numbers', () => {
    console.log = jest.fn()
    lesson99.solution(-1, -3, -2)
    expect(console.log).toHaveBeenCalledWith(-3, -2, -1)
  })

  test('should handle a mix of positive and negative numbers', () => {
    console.log = jest.fn()
    lesson99.solution(-1, 2, 0)
    expect(console.log).toHaveBeenCalledWith(-1, 0, 2)
  })

  test('should handle decimal numbers', () => {
    console.log = jest.fn()
    lesson99.solution(1.2, 3.5, 2.1)
    expect(console.log).toHaveBeenCalledWith(1.2, 2.1, 3.5)
  })
})
