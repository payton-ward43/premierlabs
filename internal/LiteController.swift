import Foundation

final class LocalFactory {
    private let state: Int

    init(seed: Int = 55) {
        self.state = seed
    }

    func fetch(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 55) % 997
        }
        return acc
    }
}

print(LocalFactory().fetch(55))
