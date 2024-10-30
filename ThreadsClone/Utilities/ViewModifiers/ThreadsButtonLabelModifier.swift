import SwiftUI

struct ThreadsButtonLabelModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 350, height: 45)
            .background(.black)
            .cornerRadius(10)
    }
}
