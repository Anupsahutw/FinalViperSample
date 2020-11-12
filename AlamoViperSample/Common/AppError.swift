import Foundation

enum AppError: LocalizedError {
    case unknownError
    case networkError(status: Int, description: String)
    case dataError(description: String)

    var localizedDescription: String {
        switch self {
        case .unknownError:
            return "Unknown Error has Occurred"
        case .networkError(status: let status, description: let desc):
            return "\(status): \(desc)"
        case .dataError(description: let desc):
            return desc
        }
    }
}
