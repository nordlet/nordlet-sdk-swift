import Foundation

public enum PostV1ProductionOrdersCreateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case assembly
    case disassembly
}