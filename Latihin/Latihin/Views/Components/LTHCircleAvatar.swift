//
//  LTHCircleAvatar.swift
//  Latihin
//
//  Created by Adrianus Pandu Wicaksono on 29.11.2025.
//

import SwiftUI

struct LTHCircleAvatar: View {
    let urlString: String?
    let size: CGFloat
    
    var body: some View {
        
        if let urlString = urlString {
            AsyncImage(url: URL(string: urlString)) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size, height: size)
                        .clipShape(.circle)
                    
                case .failure:
                    Image("avatar-default")
                        .resizable()
                        .scaledToFit()
                        .frame(width: size, height: size)
                        .clipShape(.circle)
                    
                default:
                    ProgressView()
                        .frame(width: size, height: size)
                }
            }
        } else {
            Image("avatar-default")
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .clipShape(.circle)
        }
        
    }
}

#Preview {
    LTHCircleAvatar(urlString: "https://images.unsplash.com/photo-1438761681033-6461ffad8d80", size: 128)
}
