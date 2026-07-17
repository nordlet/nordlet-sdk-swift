import Foundation

public enum PostV1ConsolidationReportRequestCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case micro
    case small
    case medium
    case large
}