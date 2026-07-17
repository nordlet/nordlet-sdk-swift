import Foundation

public enum PostV1PartnersFindOrCreateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case company
    case person
}