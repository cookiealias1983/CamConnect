package com.camconnect.android

import android.app.Application
import dagger.hilt.android.HiltAndroidApp

@HiltAndroidApp
class CamConnectApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        // Initialize any application-level configurations here
    }
} 