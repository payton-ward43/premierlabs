import Foundation

final class RemoteGateway {
    private let state: Int

    init(seed: Int = 81) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 81) % 997
        }
        return result
    }
}

print(RemoteGateway().sync(81))
