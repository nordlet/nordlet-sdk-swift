import Foundation

extension Requests {
    public struct InboundEmailCaptureRequest: Codable, Hashable, Sendable {
        public let postmarkTo: String?
        public let toFull: [InboundEmailCaptureRequestToFullItem]?
        public let postmarkFrom: String?
        public let postmarkSubject: String?
        public let postmarkAttachments: [InboundEmailCaptureRequestAttachmentsItem]?
        public let to: InboundEmailCaptureRequestTo?
        public let from: String?
        public let subject: String?
        public let attachments: [InboundEmailCaptureRequestAttachmentsItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            postmarkTo: String? = nil,
            toFull: [InboundEmailCaptureRequestToFullItem]? = nil,
            postmarkFrom: String? = nil,
            postmarkSubject: String? = nil,
            postmarkAttachments: [InboundEmailCaptureRequestAttachmentsItem]? = nil,
            to: InboundEmailCaptureRequestTo? = nil,
            from: String? = nil,
            subject: String? = nil,
            attachments: [InboundEmailCaptureRequestAttachmentsItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.postmarkTo = postmarkTo
            self.toFull = toFull
            self.postmarkFrom = postmarkFrom
            self.postmarkSubject = postmarkSubject
            self.postmarkAttachments = postmarkAttachments
            self.to = to
            self.from = from
            self.subject = subject
            self.attachments = attachments
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.postmarkTo = try container.decodeIfPresent(String.self, forKey: .postmarkTo)
            self.toFull = try container.decodeIfPresent([InboundEmailCaptureRequestToFullItem].self, forKey: .toFull)
            self.postmarkFrom = try container.decodeIfPresent(String.self, forKey: .postmarkFrom)
            self.postmarkSubject = try container.decodeIfPresent(String.self, forKey: .postmarkSubject)
            self.postmarkAttachments = try container.decodeIfPresent([InboundEmailCaptureRequestAttachmentsItem].self, forKey: .postmarkAttachments)
            self.to = try container.decodeIfPresent(InboundEmailCaptureRequestTo.self, forKey: .to)
            self.from = try container.decodeIfPresent(String.self, forKey: .from)
            self.subject = try container.decodeIfPresent(String.self, forKey: .subject)
            self.attachments = try container.decodeIfPresent([InboundEmailCaptureRequestAttachmentsItem].self, forKey: .attachments)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.postmarkTo, forKey: .postmarkTo)
            try container.encodeIfPresent(self.toFull, forKey: .toFull)
            try container.encodeIfPresent(self.postmarkFrom, forKey: .postmarkFrom)
            try container.encodeIfPresent(self.postmarkSubject, forKey: .postmarkSubject)
            try container.encodeIfPresent(self.postmarkAttachments, forKey: .postmarkAttachments)
            try container.encodeIfPresent(self.to, forKey: .to)
            try container.encodeIfPresent(self.from, forKey: .from)
            try container.encodeIfPresent(self.subject, forKey: .subject)
            try container.encodeIfPresent(self.attachments, forKey: .attachments)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case postmarkTo = "To"
            case toFull = "ToFull"
            case postmarkFrom = "From"
            case postmarkSubject = "Subject"
            case postmarkAttachments = "Attachments"
            case to
            case from
            case subject
            case attachments
        }
    }
}