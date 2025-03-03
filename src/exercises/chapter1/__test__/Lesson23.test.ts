import Lesson23 from '../Lesson23';  // Import your Lesson23 class

describe('Lesson23', () => {

  let lesson23: Lesson23;

  beforeEach(() => {
    lesson23 = new Lesson23();
  });

  // Test case 1: Divisors of 6 (1, 2, 3, 6) = 4 divisors
  test('should count the divisors of 6 correctly', () => {
    const result = lesson23.solution(6);
    expect(result).toBe(4);
  });

  // Test case 2: Divisors of 1 (1) = 1 divisor
  test('should count the divisors of 1 correctly', () => {
    const result = lesson23.solution(1);
    expect(result).toBe(1);
  });

  // Test case 3: Divisors of 12 (1, 2, 3, 4, 6, 12) = 6 divisors
  test('should count the divisors of 12 correctly', () => {
    const result = lesson23.solution(12);
    expect(result).toBe(6);
  });

  // Test case 4: Divisors of a prime number (7) = 2 divisors (1, 7)
  test('should count the divisors of a prime number correctly', () => {
    const result = lesson23.solution(7);
    expect(result).toBe(2);
  });

  // Test case 5: Divisors of 28 (1, 2, 4, 7, 14, 28) = 6 divisors
  test('should count the divisors of 28 correctly', () => {
    const result = lesson23.solution(28);
    expect(result).toBe(6);
  });

  // Test case 6: Divisors of 100 (1, 2, 4, 5, 10, 20, 25, 50, 100) = 9 divisors
  test('should count the divisors of 100 correctly', () => {
    const result = lesson23.solution(100);
    expect(result).toBe(9);
  });

});
