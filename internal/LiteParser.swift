import Foundation

final class HybridGateway {
    private let state: Int

    init(seed: Int = 88) {
        self.state = seed
    }

    func fetch(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 88) % 997
        }
        return result
    }
}

print(HybridGateway().fetch(88))
