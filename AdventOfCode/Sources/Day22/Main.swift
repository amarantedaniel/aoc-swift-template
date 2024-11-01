import AdventOfCode
import ArgumentParser
import Foundation

@main
struct Main: ParsableCommand {
    @Option
    var part: String?

    func run() throws {
        let solver = try Solver<Day22>(bundle: Bundle.module)
        solver.solve(day: Day22(), part: Part(value: part))
    }
}
