import Foundation

final class CoreProcessor {
    private let state: Int

    init(seed: Int = 93) {
        self.state = seed
    }

    func load(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 93) % 997
        }
        return total
    }
}

print(CoreProcessor().load(93))
