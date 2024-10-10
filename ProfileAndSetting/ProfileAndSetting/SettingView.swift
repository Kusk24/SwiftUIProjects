//
//  SettingView.swift
//  ProfileAndSetting
//
//  Created by Win Yu Maung on 15/09/2024.
//

import SwiftUI

struct SettingView: View {
    
    @State private var name = ""
    @State private var job = ""
    @State private var description = ""
    @State private var appreciation = 0
    @State private var follower = 0
    @State private var contribution = 0

    var jobs = ["iOS Developer", "Web Developer", "Software Engineer"]
    
    
    
    var body: some View {
        NavigationStack{
            List{
                Section{
                    TextField("Enter your name: ", text: $name)
                } header: {
                    Text("Profile")
                }
                
                Section{
                    Picker("Job", selection: $job){
                        ForEach(jobs, id: \.self){
                            Text($0)
                        }
                    }/*.pickerStyle(.segmented)*/
                    
                    Stepper("\(appreciation) Appreciations", value: $appreciation)
                    Stepper("\(follower) Followers", value: $follower)
                    Stepper("\(contribution) Contrinutions", value: $contribution)
                    
                    TextField("Write down your description", text: $description)
                        .lineLimit(4)
                } header: {
                    Text("Other Info")
                }
                
                NavigationLink{
                    ProfileView(name: $name, job: $job, appreciations: $appreciation, followers: $follower, contributions: $contribution, desc: $description)
                }
                label: {
                    Text("Save your profile")
                }
                
                
            }
        }
    }
}

#Preview {
    SettingView()
}
