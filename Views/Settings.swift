//
//  Settings.swift
//  TicPic_App
//
//  Created by Afrah Saleh on 12/05/1445 AH.
//

import SwiftUI

struct Settings: View {
    @State var showNotifications: Bool = true
    @State var fontSize: CGFloat = 16.0
    
    @State var profileName: String = "Sarah"
    @State var profileEmail: String = "Sarah@example.com"
    @State var hasUnsavedChanges: Bool = false
    
    var body: some View {
       // NavigationView {
            Form {
                Section("Profile") {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding()
                    
                    TextField("Name", text: $profileName)
                    //            .onChange(of: $profileName) { _ in
                    //              hasUnsavedChanges = true
                    //            }
                    
                    TextField("Email", text: $profileEmail)
                    //            .onChange(of: $profileEmail) { _ in
                    //              hasUnsavedChanges = true
                    //            }
                    
                    Button("Save Changes") {
                        if hasUnsavedChanges {
                            // Save profile data to persistent storage
                            hasUnsavedChanges = false
                        }
                    }
                    .disabled(!hasUnsavedChanges) // Disable button when no changes are made
                }
                
                Section("Notification Settings") {
                    Toggle("Enable Notifications", isOn: $showNotifications)
                        .tint(Color("orange2"))
                    
                    
                }
                
                Section("Help & Support") {
                    Button {
                        // Implement contact support functionality
                    } label: {
                        Label("Contact Support", systemImage: "questionmark.circle.fill")
                            .foregroundColor(Color("Background"))
                    }
                    
                }
                
                Section("Account Management") {
                    
                    Button {
                        // Implement password change functionality
                    } label: {
                        Label("Change Password", systemImage: "lock.circle.fill")
                            .foregroundColor(Color("Background"))
                    }
                    
                    
                    Button {
                        // Implement logout functionality
                    } label: {
                        Label("Logout", systemImage: "power.circle.fill")
                    }
                    .foregroundColor(.red)
                    
                    Button {
                        // Implement account deletion functionality
                    } label: {
                        Label("Delete Account", systemImage: "trash.circle.fill")
                    }
                    .foregroundColor(.red)
                    .tint(.red) // Make delete button stand out
                }
            }
            .background(Color("Second_color"))
            .navigationBarTitle(Text("Settings"))
            .navigationBarTitleDisplayMode(.inline)
        //}
        
    }
}






#Preview {
    Settings()
}
