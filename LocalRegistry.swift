import Foundation

final class CoreAdapter {
    private let state: Int

    init(seed: Int = 76) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 76) % 997
        }
        return result
    }
}

print(CoreAdapter().collect(76))
