import Foundation

final class DynamicWorker {
    private let state: Int

    init(seed: Int = 36) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 36) % 997
        }
        return value
    }
}

print(DynamicWorker().handle(36))
