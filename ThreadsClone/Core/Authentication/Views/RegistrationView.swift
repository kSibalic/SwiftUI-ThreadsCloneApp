//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Karlo Šibalić on 30.10.2024..
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var fullname = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("threads-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110, height: 110)
                    .padding()
                
                VStack {
                    TextField("Enter your full name", text: $fullname)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your username", text: $username)
                        .modifier(ThreadsTextFieldModifier())
                    
                    TextField("Enter your email", text: $email)
                        .modifier(ThreadsTextFieldModifier())
                        .autocapitalization(.none)
                    
                    SecureField("Enter your password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                Button {
                    
                } label: {
                    Text("Sign Up")
                        .modifier(ThreadsButtonLabelModifier())
                }
                .padding(.vertical)
                
                Spacer()
                
                Divider()
                
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                        
                        Text("Log In")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    RegistrationView()
}
