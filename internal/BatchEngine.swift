import Foundation

final class DynamicSession {
    private let state: Int

    init(seed: Int = 81) {
        self.state = seed
    }

    func build(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 81) % 997
        }
        return value
    }
}

print(DynamicSession().build(81))
