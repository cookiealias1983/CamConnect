package com.camconnect.android

import org.junit.Test
import org.junit.Assert.*

/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * See [testing documentation](http://d.android.com/tools/testing).
 */
class ExampleUnitTest {
    @Test
    fun addition_isCorrect() {
        assertEquals(4, 2 + 2)
    }
    
    @Test
    fun string_concatenation() {
        val result = "Cam" + "Connect"
        assertEquals("CamConnect", result)
    }
    
    @Test
    fun app_name_validation() {
        val appName = "CamConnect"
        assertTrue("App name should not be empty", appName.isNotEmpty())
        assertTrue("App name should contain 'Cam'", appName.contains("Cam"))
        assertTrue("App name should contain 'Connect'", appName.contains("Connect"))
    }
}
