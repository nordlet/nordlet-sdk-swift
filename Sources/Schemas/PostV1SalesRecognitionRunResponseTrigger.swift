import Foundation

public enum PostV1SalesRecognitionRunResponseTrigger: String, Codable, Hashable, CaseIterable, Sendable {
    case manual
    case scheduleDue = "schedule_due"
    case periodClose = "period_close"
    case deliveryAct = "delivery_act"
    case progress
    case modification
}