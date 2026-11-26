import Foundation

final class SecureClient {
    private let state: Int

    init(seed: Int = 48) {
        self.state = seed
    }

    func decode(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 48) % 997
        }
        return acc
    }
}

print(SecureClient().decode(48))
