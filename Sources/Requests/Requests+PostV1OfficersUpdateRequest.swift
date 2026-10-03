import Foundation

extension Requests {
    public struct PostV1OfficersUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let name: String
        public let role: PostV1OfficersUpdateRequestRole
        public let personalCode: String?
        public let birthDate: String?
        public let appointedOn: String?
        public let powerNotary: String?
        public let resignedOn: String?
        public let signsAccounts: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            name: String,
            role: PostV1OfficersUpdateRequestRole,
            personalCode: String? = nil,
            birthDate: String? = nil,
            appointedOn: String? = nil,
            powerNotary: String? = nil,
            resignedOn: String? = nil,
            signsAccounts: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.name = name
            self.role = role
            self.personalCode = personalCode
            self.birthDate = birthDate
            self.appointedOn = appointedOn
            self.powerNotary = powerNotary
            self.resignedOn = resignedOn
            self.signsAccounts = signsAccounts
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.name = try container.decode(String.self, forKey: .name)
            self.role = try container.decode(PostV1OfficersUpdateRequestRole.self, forKey: .role)
            self.personalCode = try container.decodeIfPresent(String.self, forKey: .personalCode)
            self.birthDate = try container.decodeIfPresent(String.self, forKey: .birthDate)
            self.appointedOn = try container.decodeIfPresent(String.self, forKey: .appointedOn)
            self.powerNotary = try container.decodeIfPresent(String.self, forKey: .powerNotary)
            self.resignedOn = try container.decodeIfPresent(String.self, forKey: .resignedOn)
            self.signsAccounts = try container.decodeIfPresent(Bool.self, forKey: .signsAccounts)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.name, forKey: .name)
            try container.encode(self.role, forKey: .role)
            try container.encodeIfPresent(self.personalCode, forKey: .personalCode)
            try container.encodeIfPresent(self.birthDate, forKey: .birthDate)
            try container.encodeIfPresent(self.appointedOn, forKey: .appointedOn)
            try container.encodeIfPresent(self.powerNotary, forKey: .powerNotary)
            try container.encodeIfPresent(self.resignedOn, forKey: .resignedOn)
            try container.encodeIfPresent(self.signsAccounts, forKey: .signsAccounts)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case name
            case role
            case personalCode
            case birthDate
            case appointedOn
            case powerNotary
            case resignedOn
            case signsAccounts
        }
    }
}