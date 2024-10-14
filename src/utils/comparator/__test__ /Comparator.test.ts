import Comparator from '../Comparator'

describe('Comparator', () => {
  it('should use the default comparison function', () => {
    const comparator = new Comparator<number>()

    expect(comparator.equal(1, 1)).toBe(true)
    expect(comparator.equal(1, 2)).toBe(false)
    expect(comparator.lessThan(1, 2)).toBe(true)
    expect(comparator.greaterThan(2, 1)).toBe(true)
    expect(comparator.lessThanOrEqual(1, 1)).toBe(true)
    expect(comparator.lessThanOrEqual(1, 2)).toBe(true)
    expect(comparator.greaterThanOrEqual(2, 2)).toBe(true)
    expect(comparator.greaterThanOrEqual(3, 2)).toBe(true)
  })

  it('should compare strings', () => {
    const comparator = new Comparator<string>()

    expect(comparator.equal('a', 'a')).toBe(true)
    expect(comparator.lessThan('a', 'b')).toBe(true)
    expect(comparator.greaterThan('b', 'a')).toBe(true)
  })

  it('should allow custom comparison function', () => {
    const customCompareFunction = (a: number, b: number) => {
      if (a % 10 === b % 10) return 0
      return a % 10 < b % 10 ? -1 : 1
    }
    const comparator = new Comparator<number>(customCompareFunction)

    expect(comparator.equal(11, 21)).toBe(true)
    expect(comparator.lessThan(12, 23)).toBe(true)
    expect(comparator.greaterThan(24, 13)).toBe(true)
  })

  it('should reverse the comparison order', () => {
    const comparator = new Comparator<number>()

    expect(comparator.lessThan(1, 2)).toBe(true)
    comparator.reverse()
    expect(comparator.lessThan(1, 2)).toBe(false)
    expect(comparator.greaterThan(1, 2)).toBe(true)
  })
})
