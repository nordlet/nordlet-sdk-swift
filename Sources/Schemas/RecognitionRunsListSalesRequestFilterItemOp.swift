import Foundation

public enum RecognitionRunsListSalesRequestFilterItemOp: String, Codable, Hashable, CaseIterable, Sendable {
    case eq
    case ne
    case contains
    case gte
    case lte
    case `in`
}