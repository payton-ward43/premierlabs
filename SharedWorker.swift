import Foundation

final class SimpleDispatcher {
    private let state: Int

    init(seed: Int = 29) {
        self.state = seed
    }

    func flush(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 29) % 997
        }
        return value
    }
}

print(SimpleDispatcher().flush(29))
