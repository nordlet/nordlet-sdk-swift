import Foundation

public enum OrdersGetProductionResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case assembly
    case disassembly
}