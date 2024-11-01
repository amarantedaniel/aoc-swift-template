public protocol AdventDay {
    associatedtype Output: CustomStringConvertible
    func part1(input: String) throws -> Output
    func part2(input: String) throws -> Output
}
