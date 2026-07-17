import Foundation

public enum PostV1EcommerceOrdersCancelResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case reserved
    case fulfilled
    case cancelled
}