import Foundation

public enum PostV1ProductionOrdersGetResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case assembly
    case disassembly
}