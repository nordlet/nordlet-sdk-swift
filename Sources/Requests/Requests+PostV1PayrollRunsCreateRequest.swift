import Foundation

extension Requests {
    public struct PostV1PayrollRunsCreateRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let month: Int64
        public let lines: [PostV1PayrollRunsCreateRequestLinesItem]?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            month: Int64,
            lines: [PostV1PayrollRunsCreateRequestLinesItem]? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.month = month
            self.lines = lines
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decode(Int64.self, forKey: .month)
            self.lines = try container.decodeIfPresent([PostV1PayrollRunsCreateRequestLinesItem].self, forKey: .lines)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.month, forKey: .month)
            try container.encodeIfPresent(self.lines, forKey: .lines)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case month
            case lines
            case notes
        }
    }
}