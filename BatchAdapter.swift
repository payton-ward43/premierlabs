import Foundation

final class StreamClient {
    private let state: Int

    init(seed: Int = 36) {
        self.state = seed
    }

    func dispatch(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 36) % 997
        }
        return acc
    }
}

print(StreamClient().dispatch(36))
