import Foundation

public enum PostV1BankAccountsListRequestFilterItemValue: Codable, Hashable, Sendable {
    case string(String)
    case double(Double)
    case bool(Bool)
    case postV1BankAccountsListRequestFilterItemValueThreeItemArray([PostV1BankAccountsListRequestFilterItemValueThreeItem])

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode(Double.self) {
            self = .double(value)
        } else if let value = try? container.decode(Bool.self) {
            self = .bool(value)
        } else if let value = try? container.decode([PostV1BankAccountsListRequestFilterItemValueThreeItem].self) {
            self = .postV1BankAccountsListRequestFilterItemValueThreeItemArray(value)
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
        case .postV1BankAccountsListRequestFilterItemValueThreeItemArray(let value):
            try container.encode(value)
        }
    }
}