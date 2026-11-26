import Foundation

final class CoreGateway {
    private let state: Int

    init(seed: Int = 83) {
        self.state = seed
    }

    func run(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 83) % 997
        }
        return count
    }
}

print(CoreGateway().run(83))
