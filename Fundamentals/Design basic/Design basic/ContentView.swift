//
//  ContentView.swift
//  Design basic
//
//  Created by Erkebulan Massainov on 27.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isHeartFilled = false
    @State private var isListFilled = false
    
    @State private var greenColor:Color = Color(red:21/255, green:183/255, blue:66/255)
    var body: some View {
        VStack{
            
            let priceString = String(format: "%.2f", 95699.90)
            let priceComponents = priceString.split(separator: ".")
            let integerPart = String(priceComponents[0])
            let fractionalPart = String(priceComponents[1])
            
            GeometryReader { geoGlobal in
                ScrollView (showsIndicators: false){
                    VStack(spacing: 20) {
                        ForEach(0..<5){ _ in
                            HStack(spacing:30){
                                ForEach(0..<2){ _ in
                                    gridCard(geoGlobal,integerPart,fractionalPart)
                                }
                            }
                            
                        }
                        
                    }
                    
                    
                    
                    
                }
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
    func gridCard(_ geoGlobal: GeometryProxy, _ integerPart: String, _ fractionalPart: String) -> some View {
        Rectangle()
            .foregroundColor(.white)
        
            .frame(width: geoGlobal.size.width * 0.45, height: geoGlobal.size.height * 0.37)
            .overlay(alignment: .top) {
                VStack(alignment:.leading){
                    ZStack{
                        Image("mayonez")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .overlay(alignment: .bottomLeading){
                        HStack(spacing:0){
                            Image(systemName: "star.fill")
                                .padding(.trailing,3)
                                .foregroundColor(.yellow)
                            Text("4.1")
                                .opacity(0.8)
                            
                            
                        }
                        .padding([.leading,.trailing],5)
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                    }
                    
                    Text("сыр Ламбер 500/0 230г")
                        .font(.system(size: 10))
                        .opacity(0.8)
                        .foregroundStyle(.black)
                        .padding([.leading,.trailing],5)
                    
                }
            }
            .overlay(alignment: .bottom) {
                HStack{
                    VStack(alignment:.leading,spacing:0){
                        HStack {
                            Group {
                                Text(integerPart)
                                    .font(.custom("CeraRoundPro-Bold", size: 18))
                                +
                                Text(" \(fractionalPart)")
                                    .font(.custom("CeraRoundPro-Bold", size: 14))
                                    .bold()
                                    .baselineOffset(3)
                                
                            }
                            Image("PerAmountIcon")
                                .frame(width: 6)
                        }
                        Text("\(String(format:"%.1f",199.000))")
                            .opacity(0.6)
                            .font(.system(size: 12))
                            .strikethrough(true, color: .gray)
                    }
                    
                    Spacer()
                    Button() {
                        
                    } label: {
                        ZStack{
                            Capsule()
                                .frame(width: geoGlobal.size.width * 0.14 ,height: geoGlobal.size.height * 0.055)
                                .foregroundColor(greenColor)
                            Image("cart")
                        }
                        
                    }
                }
                
                .padding([.leading,.trailing],5)
                .padding([.bottom], 3)
                .foregroundColor(.black)
            }
            .overlay(alignment: .topTrailing){
                ZStack{
                    Capsule()
                        .frame(width: geoGlobal.size.width * 0.1, height: geoGlobal.size.height * 0.1)
                        .foregroundColor(.white)
                        .opacity(0.8)
                    VStack{
                        
                        Image(systemName: isListFilled ? "wallet.pass.fill" : "wallet.pass")
                            .onTapGesture {
                                isListFilled.toggle()
                            }
                            .opacity(isListFilled ? 0.6: 0.4)
                        
                        
                        
                            .padding(.bottom,10)
                        
                        Image(systemName: isHeartFilled ? "heart.fill" : "heart")
                            .onTapGesture {
                                isHeartFilled.toggle()
                            }
                            .foregroundColor(isHeartFilled ? greenColor : .black)
                            .opacity(isHeartFilled ? 1: 0.4)
                        
                        
                    }
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                    
                }
                
            }
            .overlay(alignment: .topLeading){
                setCoupon("Удар по ценам")
            }
            .clipShape(
                RoundedRectangle(cornerRadius: 20)
            )
    }
    func setCoupon(_ str: String) -> some View {
        
        Text(str)
            .font(.system(size: 10))
            .foregroundColor(.white)
        
            .padding(.top, 2)
            .padding(.leading, 12)
            .padding(.bottom, 4)
            .padding(.trailing, 6)
        
            .background(
                GeometryReader { geo in
                    UnevenRoundedRectangle(
                        bottomTrailingRadius: 6, topTrailingRadius: 6
                    )
                    .frame(width: geo.size.width , height: geo.size.height)
                    .foregroundColor(.blue)
                    
                }
            )
        
        
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
