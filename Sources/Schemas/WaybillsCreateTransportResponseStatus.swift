import Foundation

public enum WaybillsCreateTransportResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}