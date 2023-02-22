//
//  CompatibleLoadingIndicator.swift
//  
//
//  Created by Nasir Ahmed Momin on 22/02/23.
//

import SwiftUI

public extension View {
    func loadingIndicator(_ shouldVisible: Bool) -> some View {
        return modifier(CompatibleLoadingIndicator(shouldVisible))
    }
}

public struct CompatibleLoadingIndicator: ViewModifier {
    let shouldVisible: Bool
    
    init(_ shouldVisible: Bool) {
        self.shouldVisible = shouldVisible
    }
    
    public func body(content: Content) -> some View {
        if shouldVisible {
            ZStack {
                content
                if #available(iOS 14.0, *) {
                    ProgressView()
                        .progressViewStyle(.circular)
                } else {
                    ActivityLoadingIndicator()
                }
            }
        } else {
            content
        }
    }
}

internal struct ActivityLoadingIndicator: UIViewRepresentable {
    typealias UIViewType = UIActivityIndicatorView
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        UIActivityIndicatorView(style: .medium)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        uiView.startAnimating()
    }
}


