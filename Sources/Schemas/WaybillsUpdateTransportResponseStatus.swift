import Foundation

public enum WaybillsUpdateTransportResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}