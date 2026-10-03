import Foundation

public enum PostV1AccountCompaniesProfileResponseVatPeriod: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case bimonthly
    case quarterly
    case semiannual
    case annual
}