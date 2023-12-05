//
//  BiometricsView.swift
//  Shared-iOS
//
//  Created by Bruno Pantaleão on 04/12/2023.
//  Copyright © 2023 Home Assistant. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
struct BiometricsView: View {
    @ObservedObject private var viewModel: BiometricsViewModel

    init(viewModel: BiometricsViewModel) {
        self._viewModel = .init(wrappedValue: viewModel)
    }

    var body: some View {
        VStack(spacing: Spacing.three) {
            Image(asset: Asset.SharedAssets.launchScreenLogo)
            Button {
                viewModel.unlock()
            } label: {
                Text(L10n.SettingsDetails.General.Security.unlockButton)
            }
            .buttonStyle(.textButton)
        }
    }
}

@available(iOS 13.0, *)
#Preview {
    BiometricsView(viewModel: .init())
}
