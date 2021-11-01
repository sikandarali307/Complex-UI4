//
//  Home.swift
//  Complex UI4 (iOS)
//
//  Created by Mac on 01/11/2021.
//

import SwiftUI

struct Home: View {
    @State var width  = UIScreen.main.bounds.width
    
    @State var data :[DataModel] = Fruitdata
    @State var index = 0
    var body: some View {
        ZStack(alignment: .top) {
            VStack{
                HStack{
                    Button{
                        
                    }label: {
                        HStack(spacing:5){
                            Image(systemName: "chevron.backward")
                                .renderingMode(.original)
                                .foregroundColor(.black)
                            
                               Text("Back")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                    }
                    
                    Spacer()
                    
                    Button{
                       
                    }label: {
                          Image(systemName: "bag.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio( contentMode: .fill)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black.opacity(0.8))
                             
                    }
                    
                    
                }
                
                .padding()
                .padding(.top ,-30)
                
                HStack{
                    Button{
                        if self.index != 0{
                            self.index -= 1
                        }
                    }label: {
                        Image(systemName: "arrow.left.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.black.opacity(0.7))
                            .padding(.trailing,20)
                       }
                    .opacity(self.index != 0 ? 1: 0.5 )
                    .disabled(self.index != 0 ? false : true)
                    
                    
                    Image(self.data[self.index].iamge)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200, alignment: .center)
                        
                    
                    Button{
                        if self.index !=  self.data.count - 1{
                            self.index += 1
                        }
                    }label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.black.opacity(0.7))
                            .padding(.leading,20)
                        
                    }
                    .opacity(self.index != self.data.count - 1 ? 1: 0.5 )
                    .disabled(self.index != self.data.count - 1 ? false : true)
                }
                .padding()
                VStack(spacing:20){
                    //name
                    Text(self.data[self.index].name)
                        .font(.title)
                        .fontWeight(.bold)
                        //price
                    Text(self.data[self.index].price)
                        .fontWeight(.bold)
                        .padding(.top,-15)
                    
                    //content
                    Text(self.data[self.index].content)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                    //nutration value
                    Text("Nutrition Value")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top)
                    HStack{
                        Image(systemName: "flame.fill")
                            .resizable()
                            .frame(width: 25, height: 35 )
                            .foregroundColor(.orange)
                        VStack(alignment: .leading, spacing: 4) {
                            Text(self.data[self.index].calories)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            
                            Text("Calories")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            
                                   
                        }
                        .padding(.leading,20)
                    }
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(15)
                    
                    HStack{
                        VStack(alignment: .center, spacing: 10) {
                            Text(self.data[self.index].expand[0])
                            //    .foregroundColor(.white)
                                .fontWeight(.bold)
                            
                            Text("Fat")
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        VStack(alignment: .center, spacing: 10) {
                            Text(self.data[self.index].expand[1])
                            //    .foregroundColor(.white)
                                .fontWeight(.bold)
                            Text("Carbohydrate")
                                .foregroundColor(.gray)
                        }
                        Spacer()

                        VStack(alignment: .center, spacing: 10) {
                            Text(self.data[self.index].expand[2])
                            //    .foregroundColor(.white)
                                .fontWeight(.bold)
                            Text("Protine")
                                .foregroundColor(.gray)
                        }

                    }
                    .padding(.horizontal)
                   // .padding(.top,0)
                }
                .padding(.horizontal,20)
                Spacer()
                
                Button{
                    
                }label: {
                    Text("Add to Cart")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(width: self.width - 50 )
                        .background(Color.purple)
                        .clipShape(Capsule())
                    
                    
                }
                .padding(.bottom,10)
            }
            .zIndex(1)
            //here we have to create a curve
            //frist start with color
            Circle().fill(self.data[self.index].color)
            //giving size
                .frame(width: self.width + 200, height: self.width + 200)
           // expending more
                .padding(.horizontal,-100)
            //moving to upp
                .offset(y:-self.width)
            
        }
        .animation(.default)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
