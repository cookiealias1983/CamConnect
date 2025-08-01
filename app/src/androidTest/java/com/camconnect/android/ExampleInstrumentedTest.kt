package com.camconnect.android

import androidx.test.platform.app.InstrumentationRegistry
import androidx.test.ext.junit.runners.AndroidJUnit4

import org.junit.Test
import org.junit.runner.RunWith

import org.junit.Assert.*

/**
 * Instrumented test, which will execute on an Android device.
 *
 * See [testing documentation](http://d.android.com/tools/testing).
 */
@RunWith(AndroidJUnit4::class)
class ExampleInstrumentedTest {
    @Test
    fun useAppContext() {
        // Context of the app under test.
        val appContext = InstrumentationRegistry.getInstrumentation().targetContext
        assertEquals("com.camconnect.android", appContext.packageName)
    }
    
    @Test
    fun app_launches_successfully() {
        val appContext = InstrumentationRegistry.getInstrumentation().targetContext
        assertNotNull("App context should not be null", appContext)
    }
}
