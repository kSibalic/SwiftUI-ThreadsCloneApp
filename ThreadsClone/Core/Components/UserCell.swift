//
//  UserCell.swift
//  ThreadsClone
//
//  Created by Karlo Šibalić on 31.10.2024..
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
                
            VStack(alignment: .leading) {
                Text("sircinaDebela")
                    .fontWeight(.semibold)
                    
                Text("Luka Agicic")
            }
            .font(.footnote)
                
            Spacer()
                
            Text("Follow")
                .font(.headline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
