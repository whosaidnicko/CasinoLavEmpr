//
//  Igrusheci.swift
//  CasinoLavEmpr
//
//  Created by Nicolae Chivriga on 06/02/2025.
//

import SwiftUI
import Lottie

struct Igrusheci: View {
    let text: String
    let ruletk: Bool
    @State var noanimat: Bool = false
    var body: some View {
        ZStack {
            Image(ruletk ? "bgGru" : "bgPur")
                .resizable()
                .ignoresSafeArea()
//            loadi
            if !noanimat {
                LottieView(animation: .named("loadi"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 100, height: 130)
            }
            WKWebViewRepresentable(url: URL(string: text)!, gluheni: true) {
                let heavy = UIImpactFeedbackGenerator(style: .heavy)
                heavy.impactOccurred()
                noanimat = true
            }
            
                .cornerRadius(15)
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: BlpaseS())
    }
}
class AppDelegate: NSObject, UIApplicationDelegate {
    
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.movement
    }
    
    static var movement = UIInterfaceOrientationMask.landscape {
        didSet {
            if #available(iOS 16.0, *) {
                UIApplication.shared.connectedScenes.forEach { scene in
                    if let windowScene = scene as? UIWindowScene {
                        windowScene.requestGeometryUpdate(.iOS(interfaceOrientations: movement))
                    }
                }
                UIViewController.attemptRotationToDeviceOrientation()
            } else {
                if movement == .landscape {
                    UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight.rawValue, forKey: "orientation")
                } else {
                    UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
                }
            }
        }
    }
}
