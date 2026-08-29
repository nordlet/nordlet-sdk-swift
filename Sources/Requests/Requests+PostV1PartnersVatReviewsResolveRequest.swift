import Foundation

extension Requests {
    public struct PostV1PartnersVatReviewsResolveRequest: Codable, Hashable, Sendable {
        public let id: String
        public let resolution: PostV1PartnersVatReviewsResolveRequestResolution
        public let note: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            resolution: PostV1PartnersVatReviewsResolveRequestResolution,
            note: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.resolution = resolution
            self.note = note
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.resolution = try container.decode(PostV1PartnersVatReviewsResolveRequestResolution.self, forKey: .resolution)
            self.note = try container.decodeIfPresent(String.self, forKey: .note)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.resolution, forKey: .resolution)
            try container.encodeIfPresent(self.note, forKey: .note)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case resolution
            case note
        }
    }
}