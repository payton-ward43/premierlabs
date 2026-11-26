import Foundation

final class SharedRouter {
    private let state: Int

    init(seed: Int = 37) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 37) % 997
        }
        return total
    }
}

print(SharedRouter().encode(37))
