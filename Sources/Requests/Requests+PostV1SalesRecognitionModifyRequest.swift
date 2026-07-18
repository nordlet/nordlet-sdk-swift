import Foundation

extension Requests {
    public struct PostV1SalesRecognitionModifyRequest: Codable, Hashable, Sendable {
        public let invoiceLineId: String
        public let approach: PostV1SalesRecognitionModifyRequestApproach
        public let date: String?
        public let newEndDate: String?
        public let newMilestones: [PostV1SalesRecognitionModifyRequestNewMilestonesItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            invoiceLineId: String,
            approach: PostV1SalesRecognitionModifyRequestApproach,
            date: String? = nil,
            newEndDate: String? = nil,
            newMilestones: [PostV1SalesRecognitionModifyRequestNewMilestonesItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.invoiceLineId = invoiceLineId
            self.approach = approach
            self.date = date
            self.newEndDate = newEndDate
            self.newMilestones = newMilestones
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.invoiceLineId = try container.decode(String.self, forKey: .invoiceLineId)
            self.approach = try container.decode(PostV1SalesRecognitionModifyRequestApproach.self, forKey: .approach)
            self.date = try container.decodeIfPresent(String.self, forKey: .date)
            self.newEndDate = try container.decodeIfPresent(String.self, forKey: .newEndDate)
            self.newMilestones = try container.decodeIfPresent([PostV1SalesRecognitionModifyRequestNewMilestonesItem].self, forKey: .newMilestones)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.invoiceLineId, forKey: .invoiceLineId)
            try container.encode(self.approach, forKey: .approach)
            try container.encodeIfPresent(self.date, forKey: .date)
            try container.encodeIfPresent(self.newEndDate, forKey: .newEndDate)
            try container.encodeIfPresent(self.newMilestones, forKey: .newMilestones)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case invoiceLineId
            case approach
            case date
            case newEndDate
            case newMilestones
        }
    }
}