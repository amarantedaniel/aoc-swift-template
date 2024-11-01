import AdventOfCode
import ArgumentParser
import Foundation

@main
struct Main: ParsableCommand {
    @Option
    var part: String?

    func run() throws {
        let solver = try Solver<Day19>(bundle: Bundle.module)
        solver.solve(day: Day19(), part: Part(value: part))
    }
}
