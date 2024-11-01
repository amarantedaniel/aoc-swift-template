import Foundation

public struct Solver<Day: AdventDay> {
    private let input: String
    private let clock = ContinuousClock()

    public init(bundle: Bundle) throws {
        self.input = try InputReader.read(from: bundle)
    }

    public func solve(day: Day, part: Part) {
        switch part {
        case .part1:
            print("Part 1")
            runAndMeasure(block: day.part1)
        case .part2:
            print("Part 2")
            runAndMeasure(block: day.part2)
        case .both:
            solve(day: day, part: .part1)
            solve(day: day, part: .part2)
        }
    }

    private func runAndMeasure(block: (String) throws -> Day.Output) {
        do {
            var result: Day.Output?
            let duration = try clock.measure {
                result = try block(input)
            }
            print(format(output: result!, duration: duration))
        } catch {
            print(error)
        }
    }

    private func format(output: Day.Output, duration: Duration) -> String {
        let formattedDuration = duration.formatted(
            .units(allowed: [.milliseconds])
        )
        return "\(output) (\(formattedDuration))"
    }
}
