import Foundation

public enum DirectDebitsCandidatesBankRequestFilterItemValue: Codable, Hashable, Sendable {
    case string(String)
    case double(Double)
    case bool(Bool)
    case directDebitsCandidatesBankRequestFilterItemValueThreeItemArray([DirectDebitsCandidatesBankRequestFilterItemValueThreeItem])

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode(Double.self) {
            self = .double(value)
        } else if let value = try? container.decode(Bool.self) {
            self = .bool(value)
        } else if let value = try? container.decode([DirectDebitsCandidatesBankRequestFilterItemValueThreeItem].self) {
            self = .directDebitsCandidatesBankRequestFilterItemValueThreeItemArray(value)
        } else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Unexpected value."
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.singleValueContainer()
        switch self {
        case .string(let value):
            try container.encode(value)
        case .double(let value):
            try container.encode(value)
        case .bool(let value):
            try container.encode(value)
        case .directDebitsCandidatesBankRequestFilterItemValueThreeItemArray(let value):
            try container.encode(value)
        }
    }
}