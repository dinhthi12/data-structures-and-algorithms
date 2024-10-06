export default class Comparator<T extends string | number> {
  private compare: (a: T, b: T) => number;

  /**
   * Contructor
   * @param {function(a: *, b: *)} [CompareFunction] - It may be custom compare function that, let's
   * say may compare custom object together.
   */
  constructor(compareFunction?: (a: T, b: T) => number) {
    this.compare = compareFunction || Comparator.defaultCompareFunction;
  }

  /**
   * Default comparison function. It just assumes that "a" and "b" are strings or numbers.
   * @param {(string | number)} a
   * @param {(string | number)} b
   * @return {number}
   */
  static defaultCompareFunction(
    a: string | number,
    b: string | number
  ): number {
    if (a === b) {
      return 0;
    }
    return a < b ? -1 : 1;
  }

  /**
   * Checks if two variables are equal.
   * @param {*} a
   * @param {*} b
   * @return {boolean}
   */
  equal(a: T, b: T): boolean {
    return this.compare(a, b) === 0;
  }

  /**
   * Checks if variable "a" is less than "b".
   * @param {*} a
   * @param {*} b
   * @return {boolean}
   */
  lessThan(a: T, b: T): boolean {
    return this.compare(a, b) < 0;
  }

  /**
   * Checks if variable "a" is greater than "b".
   * @param {*} a
   * @param {*} b
   * @return {boolean}
   */
  greaterThan(a: T, b: T): boolean {
    return this.compare(a, b) > 0;
  }

  /**
   * Checks if variable "a" is less than or equal to "b".
   * @param {*} a
   * @param {*} b
   * @return {boolean}
   */
  lessThanOrEqual(a: T, b: T): boolean {
    return this.lessThan(a, b) || this.equal(a, b);
  }

  /**
   * Checks if variable "a" is greater than or equal to "b".
   * @param {*} a
   * @param {*} b
   * @return {boolean}
   */
  greaterThanOrEqual(a: T, b: T): boolean {
    return this.greaterThan(a, b) || this.equal(a, b);
  }

  /**
   * Reverses the comparison order.
   */
  reverse(): void {
    const compareOriginal = this.compare;
    this.compare = (a: T, b: T) => compareOriginal(b, a);
  }
}
