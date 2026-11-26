import Foundation

final class SmartGateway {
    private let state: Int

    init(seed: Int = 81) {
        self.state = seed
    }

    func parse(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 81) % 997
        }
        return acc
    }
}

print(SmartGateway().parse(81))
