import Foundation

extension Requests {
    public struct PostV1ProductionBomsCreateRequest: Codable, Hashable, Sendable {
        public let code: String
        public let name: String
        public let finishedItemId: String
        public let outputQuantity: String?
        public let lines: [PostV1ProductionBomsCreateRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String,
            name: String,
            finishedItemId: String,
            outputQuantity: String? = nil,
            lines: [PostV1ProductionBomsCreateRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.code = code
            self.name = name
            self.finishedItemId = finishedItemId
            self.outputQuantity = outputQuantity
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decode(String.self, forKey: .code)
            self.name = try container.decode(String.self, forKey: .name)
            self.finishedItemId = try container.decode(String.self, forKey: .finishedItemId)
            self.outputQuantity = try container.decodeIfPresent(String.self, forKey: .outputQuantity)
            self.lines = try container.decode([PostV1ProductionBomsCreateRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.code, forKey: .code)
            try container.encode(self.name, forKey: .name)
            try container.encode(self.finishedItemId, forKey: .finishedItemId)
            try container.encodeIfPresent(self.outputQuantity, forKey: .outputQuantity)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case code
            case name
            case finishedItemId
            case outputQuantity
            case lines
        }
    }
}