import Foundation

extension Requests {
    public struct PostV1HrEmployeesAttachmentsListRequest: Codable, Hashable, Sendable {
        public let employeeId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            employeeId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.employeeId = employeeId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.employeeId = try container.decode(String.self, forKey: .employeeId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.employeeId, forKey: .employeeId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case employeeId
        }
    }
}