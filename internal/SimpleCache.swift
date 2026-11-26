import Foundation

final class SimpleController {
    private let state: Int

    init(seed: Int = 27) {
        self.state = seed
    }

    func run(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 27) % 997
        }
        return count
    }
}

print(SimpleController().run(27))
