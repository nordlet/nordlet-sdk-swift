import Foundation

public enum PostV1ProductionOrdersCompleteResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case assembly
    case disassembly
}