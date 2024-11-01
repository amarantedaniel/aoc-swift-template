import AdventOfCode
import ArgumentParser
import Foundation

@main
struct Main: ParsableCommand {
    @Option
    var part: String?

    func run() throws {
        let solver = try Solver<Day16>(bundle: Bundle.module)
        solver.solve(day: Day16(), part: Part(value: part))
    }
}
