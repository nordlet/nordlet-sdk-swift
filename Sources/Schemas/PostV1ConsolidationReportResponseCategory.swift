import Foundation

public enum PostV1ConsolidationReportResponseCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case micro
    case small
    case medium
    case large
}