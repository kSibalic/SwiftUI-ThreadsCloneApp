import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("sir")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
