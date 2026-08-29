import Foundation

extension Requests {
    public struct PostV1BillingAccountSetPlanRequest: Codable, Hashable, Sendable {
        public let plan: PostV1BillingAccountSetPlanRequestPlan
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            plan: PostV1BillingAccountSetPlanRequestPlan,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.plan = plan
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.plan = try container.decode(PostV1BillingAccountSetPlanRequestPlan.self, forKey: .plan)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.plan, forKey: .plan)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case plan
        }
    }
}