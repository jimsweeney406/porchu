//
//  CompleteSignUpView.swift
//  porchu
//
//  Created by James Sweeney on 1/25/25.
//
import SwiftUI

struct CompleteSignUpView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
    
        
        VStack(spacing: 12) {
            
            Spacer()
            
            Text("Welcome to Instagram, jim.sweeney")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
           
            Button {
                   print("complete sign up")
                } label: {
                    Text("complete sign up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                .padding(.vertical)
            
                Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
            
        }
        
    }
}

#Preview {
    CompleteSignUpView()
}
