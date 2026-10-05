import Foundation

extension Requests {
    public struct FeedsAccountsConfigureBankRequest: Codable, Hashable, Sendable {
        public let id: String
        public let importTemplateId: Nullable<String>?
        public let syncSchedule: FeedsAccountsConfigureBankRequestSyncSchedule?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            importTemplateId: Nullable<String>? = nil,
            syncSchedule: FeedsAccountsConfigureBankRequestSyncSchedule? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.importTemplateId = importTemplateId
            self.syncSchedule = syncSchedule
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.importTemplateId = try container.decodeNullableIfPresent(String.self, forKey: .importTemplateId)
            self.syncSchedule = try container.decodeIfPresent(FeedsAccountsConfigureBankRequestSyncSchedule.self, forKey: .syncSchedule)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeNullableIfPresent(self.importTemplateId, forKey: .importTemplateId)
            try container.encodeIfPresent(self.syncSchedule, forKey: .syncSchedule)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case importTemplateId
            case syncSchedule
        }
    }
}