import Foundation

public enum PostV1ReferenceBanksListRequestFilterItemValue: Codable, Hashable, Sendable {
    case string(String)
    case double(Double)
    case bool(Bool)
    case postV1ReferenceBanksListRequestFilterItemValueThreeItemArray([PostV1ReferenceBanksListRequestFilterItemValueThreeItem])

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode(Double.self) {
            self = .double(value)
        } else if let value = try? container.decode(Bool.self) {
            self = .bool(value)
        } else if let value = try? container.decode([PostV1ReferenceBanksListRequestFilterItemValueThreeItem].self) {
            self = .postV1ReferenceBanksListRequestFilterItemValueThreeItemArray(value)
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
        case .postV1ReferenceBanksListRequestFilterItemValueThreeItemArray(let value):
            try container.encode(value)
        }
    }
}