//
//  ContentView.swift
//  TestMenuInSafeArea
//
//  Created by Dio on 2022/10/11.
//

import SwiftUI

struct TestMenuInSafeAreaInset: View {
	@State private var message = ""

	fileprivate func example1() -> some View {
		return HStack {
			Spacer()
				.frame(height: 70)
			Menu {
				Button {

				} label: {
					Text("Confirm")
				}

				Button {

				} label: {
					Text("Cancel")
				}
			} label: {
				Image(systemName: "square.and.arrow.up.fill")
					.padding()
					.tint(.white)
					.background(Color.brown)
					.cornerRadius(50)
			}
			.frame(width: 50, height: 50)
		}
		.padding(.horizontal, 20)
		.background(Color.blue)
	}

	var body: some View {
		VStack {
			TextField("Input your user name", text: $message)
				.padding()
				.background(Color.gray.opacity(0.3))
				.cornerRadius(12)
				.padding()
			Spacer()
		}
		.safeAreaInset(edge: .bottom) {
			example1()
		}
	}
}

struct TestMenuInSafeAreaInset_Previews: PreviewProvider {
	static var previews: some View {
		TestMenuInSafeAreaInset()
	}
}
