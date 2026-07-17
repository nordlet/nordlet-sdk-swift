import Foundation

extension Requests {
    public struct PostV1HrLeaveBalancesListRequest: Codable, Hashable, Sendable {
        public let employeeId: String?
        public let year: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            employeeId: String? = nil,
            year: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.employeeId = employeeId
            self.year = year
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.employeeId = try container.decodeIfPresent(String.self, forKey: .employeeId)
            self.year = try container.decodeIfPresent(Int64.self, forKey: .year)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.employeeId, forKey: .employeeId)
            try container.encodeIfPresent(self.year, forKey: .year)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case employeeId
            case year
        }
    }
}