import Lesson101 from '../Lesson101'

describe('Lesson101', () => {
  let lesson101: Lesson101
  const consoleSpy = jest.spyOn(console, 'log').mockImplementation()
  const consoleErrorSpy = jest.spyOn(console, 'error').mockImplementation()

  beforeEach(() => {
    lesson101 = new Lesson101()
    consoleSpy.mockClear()
    consoleErrorSpy.mockClear()
  })

  afterAll(() => {
    consoleSpy.mockRestore()
    consoleErrorSpy.mockRestore()
  })

  test('should print 31 days for months with 31 days', () => {
    [1, 3, 5, 7, 8, 10, 12].forEach(month => {
      lesson101.solution(2021, month)
      expect(consoleSpy).toHaveBeenCalledWith('31 days')
    })
  })

  test('should print 30 days for months with 30 days', () => {
    [4, 6, 9, 11].forEach(month => {
      lesson101.solution(2021, month)
      expect(consoleSpy).toHaveBeenCalledWith('30 days')
    })
  })

  test('should print 28 days for February in a non-leap year', () => {
    lesson101.solution(2021, 2)
    expect(consoleSpy).toHaveBeenCalledWith('28 days')
  })

  test('should print 29 days for February in a leap year', () => {
    lesson101.solution(2020, 2)
    expect(consoleSpy).toHaveBeenCalledWith('29 days')
  })

  test('should print error message for an invalid month', () => {
    lesson101.solution(2021, 13)
    expect(consoleErrorSpy).toHaveBeenCalledWith('Invalid month')
  })

  test('should print error message for a year out of range', () => {
    lesson101.solution(1899, 5)
    expect(consoleErrorSpy).toHaveBeenCalledWith('Year out of range')

    lesson101.solution(10001, 5)
    expect(consoleErrorSpy).toHaveBeenCalledWith('Year out of range')
  })

  test('should handle edge cases for leap years correctly', () => {
    lesson101.solution(2000, 2) // Leap year (divisible by 400)
    expect(consoleSpy).toHaveBeenCalledWith('29 days')

    lesson101.solution(1900, 2) // Not a leap year (divisible by 100, not by 400)
    expect(consoleSpy).toHaveBeenCalledWith('28 days')
  })
})
