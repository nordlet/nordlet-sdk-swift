import Foundation

public enum VatDetailReportsRequestSide: String, Codable, Hashable, CaseIterable, Sendable {
    case sales
    case purchases
}