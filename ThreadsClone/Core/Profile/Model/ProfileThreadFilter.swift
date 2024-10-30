import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {           //CaseIterable == can be looped through; Identifiable == we dont have to add id property to ForEach loop
    case threads
    case replies
    //case mentions
    //case likes
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
    
    var id: Int { return self.rawValue }
}
