import Foundation

public enum OrdersCreateProductionRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case assembly
    case disassembly
}