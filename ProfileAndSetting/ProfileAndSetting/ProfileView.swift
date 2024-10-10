//
//  ProfileView.swift
//  ProfileAndSetting
//
//  Created by Austin Xu on 2024/9/12.
//

import SwiftUI

struct ProfileView: View {
    
    @Binding var name: String
    @Binding var job: String
    @Binding var appreciations: Int
    @Binding var followers: Int
    @Binding var contributions: Int
    @Binding var desc :String
    
    var body: some View {
            // Drawing the rectangle
        ZStack{
            Path { path in
                //Top left
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 0, y: UIScreen.main.bounds.height - 320))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: UIScreen.main.bounds.height-320))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
                path.addLine(to: CGPoint(x: 0, y: 0))
            }
            .fill(
                LinearGradient(
                    colors: [Color("red_primary"),
                             Color("red_secondary")
                            ],
                    startPoint: .leading,
                    endPoint: .trailing)
            )
            .edgesIgnoringSafeArea(.top)
            
            // Start Coding here
            
            VStack(spacing: 30){
                Image("profile")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .cornerRadius(150)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding(.top)
            
                Text(name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .shadow(radius: 10)
                
                Text(job)
                    .imageScale(.medium)
                    .foregroundColor(.white)
                    
                
                HStack(spacing: 40){
                    Image(systemName: "heart.circle")
                        .resizable()
                        .frame(width:30, height: 30)
                        .foregroundStyle(.white)
                        .shadow(radius: 10)
                    Image(systemName: "network")
                        .resizable()
                        .frame(width:30, height: 30)
                        .foregroundStyle(.white)
                        .shadow(radius: 10)
                    Image(systemName: "message.circle")
                        .resizable()
                        .frame(width:30, height: 30)
                        .foregroundStyle(.white)
                        .shadow(radius: 10)
                    Image(systemName: "phone.circle")
                        .resizable()
                        .frame(width:30, height: 30)
                        .foregroundStyle(.white)
                        .shadow(radius: 10)
                }
                
//                Button(action: {
//                    print("Follow!!!")
//                }, label: {
//                    Text("Follow")
//                })
//                .frame(width: 150, height: 100)
                
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 175, height: 50)
                    .foregroundStyle(.white)
                    .overlay{
                        Text("Follow")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.redPrimary)
                    }
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                
                HStack(spacing: 25){
                    VStack(spacing: 15){
                      Text("\(appreciations)")
                            .foregroundStyle(.redPrimary)
                            .fontWeight(.bold)
                            .font(.headline)
                        Text("Appreciations")
                            .foregroundStyle(.gray)
                            .font(.system(size: 18))
                    }
                    VStack(spacing: 15){
                        Text("\(followers)")
                              .foregroundStyle(.redPrimary)
                              .fontWeight(.bold)
                              .font(.headline)
                        Text("Followers")
                              .foregroundStyle(.gray)
                              .font(.system(size: 18))
                    }
                    VStack(spacing: 15){
                        Text("\(contributions)")
                              .foregroundStyle(.redPrimary)
                              .fontWeight(.bold)
                              .font(.headline)
                        Text("Contributions")
                              .foregroundStyle(.gray)
                              .font(.system(size: 18))
                    }
                }
                
                VStack (spacing: 20){
                    Text("About me")
                        .font(.largeTitle)
                    Text(desc)
                        .font(.system(size: 20))
                        .multilineTextAlignment(.center)
                }
                
            }.padding(.all)
            
        
            
            
        }
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView(name: $name, job: $job, appreciations: $appreciation, followers: $followers, contributions: $contribution, desc: $desc)
//    }
//}
