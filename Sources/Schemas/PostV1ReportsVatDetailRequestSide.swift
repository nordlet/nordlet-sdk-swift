import Foundation

public enum PostV1ReportsVatDetailRequestSide: String, Codable, Hashable, CaseIterable, Sendable {
    case sales
    case purchases
}