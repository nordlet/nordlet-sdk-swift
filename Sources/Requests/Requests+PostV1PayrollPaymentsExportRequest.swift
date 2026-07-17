import Foundation

extension Requests {
    public struct PostV1PayrollPaymentsExportRequest: Codable, Hashable, Sendable {
        public let runId: String
        public let bankAccountId: String
        public let executionDate: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            runId: String,
            bankAccountId: String,
            executionDate: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.runId = runId
            self.bankAccountId = bankAccountId
            self.executionDate = executionDate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.runId = try container.decode(String.self, forKey: .runId)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.executionDate = try container.decodeIfPresent(String.self, forKey: .executionDate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.runId, forKey: .runId)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encodeIfPresent(self.executionDate, forKey: .executionDate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case runId
            case bankAccountId
            case executionDate
        }
    }
}