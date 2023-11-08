import XCTest
@testable import nkeys_swift

final class nkeys_swiftTests: XCTestCase {
    
    func test_seedEncodeDecodeRoundtrip() throws {
        let pair = try KeyPair.init(keyPairType: KeyPairType.user)
        let seed = try pair.seed
        let pub = pair.publicKeyEncoded
        
        let pair2 = try KeyPair.init(seed: seed)
        let seed2 = try pair2.seed
        
        XCTAssert(seed == seed2)
        XCTAssert(pub == pair2.publicKeyEncoded)
    }
    
    func test_signAndVerify() throws {
        let pair = try KeyPair(keyPairType: KeyPairType.user)
        let message = "A very secret message".data(using: .utf8)!
        
        let signature = try pair.sign(input: message)
        try pair.verify(input: message, signature: signature)
    }
}
