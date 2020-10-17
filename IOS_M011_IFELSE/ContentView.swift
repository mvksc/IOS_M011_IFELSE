//
//  ContentView.swift
//  IOS_M011_IFELSE
//
//  Created by MVK on 23/9/2563 BE.
//  Copyright © 2563 MVK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var sNameFood = "วันนี้กินอะไรดี"
    @State var iRandom: Int = 0
    @State var iCount: Int = 0
    var body: some View {
        VStack{
            Text(self.sNameFood)
                .foregroundColor(Color.red)
                .font(.largeTitle)
                .frame(height: 300,alignment: .center)
            
            Button(action: {
                self.iCount += 1
                self.iRandom = Int.random(in: 1...10)
                if self.iRandom == 1{
                    self.sNameFood = "กระเพราไก่"
                }else if self.iRandom == 2{
                    self.sNameFood = "ข้าวผัดทะเล"
                }else if self.iRandom == 3{
                    self.sNameFood = "ข้าวมันไก่ทอด"
                }else if self.iRandom == 4{
                    self.sNameFood = "ข้าวขาหมู"
                }else if self.iRandom == 5{
                    self.sNameFood = "พริกแกงหน่อไม้"
                }else if self.iRandom == 6{
                    self.sNameFood = "ทอดหมูกระเทียมไข่ดาว"
                }else if self.iRandom == 7{
                    self.sNameFood = "ข้าวไข่เจียว"
                }else if self.iRandom == 8{
                    self.sNameFood = "ข้าวหมกไก่"
                }else if self.iRandom == 9{
                    self.sNameFood = "ผัดไทย"
                }else if self.iRandom == 10{
                    self.sNameFood = "ราดหน้าทะเล"
                }else{
                    self.sNameFood = "อะไรก็ได้!!!"
                }
            }, label: {
                
                Text("สุ่มเลย")
                    .font(.title)
            })
            Text("สุ่มไปแล้ว " + String(self.iCount) + " รอบ")
                .foregroundColor(Color.black)
                .font(.headline)
                .padding()
        }.edgesIgnoringSafeArea(.all)
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
