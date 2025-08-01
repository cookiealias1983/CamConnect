package com.camconnect.android.ui.components

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.camconnect.android.R
import com.camconnect.android.ui.theme.*

@Composable
fun StreamingControls(
    isConnected: Boolean,
    isStreaming: Boolean,
    onStreamingToggle: () -> Unit
) {
    Card(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface
        ),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            // Header
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = stringResource(R.string.streaming_status),
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold
                )
                
                // Streaming status indicator
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Icon(
                        imageVector = if (isStreaming) Icons.Default.Videocam else Icons.Default.VideocamOff,
                        contentDescription = "Streaming Status",
                        tint = if (isStreaming) SuccessGreen else TextSecondary
                    )
                    Text(
                        text = if (isStreaming) stringResource(R.string.streaming_active) else stringResource(R.string.streaming_inactive),
                        color = if (isStreaming) SuccessGreen else TextSecondary,
                        fontWeight = FontWeight.Medium
                    )
                }
            }
            
            Spacer(modifier = Modifier.height(16.dp))
            
            // Streaming Button
            Button(
                onClick = onStreamingToggle,
                modifier = Modifier.fillMaxWidth(),
                enabled = isConnected,
                colors = ButtonDefaults.buttonColors(
                    containerColor = if (isStreaming) ErrorRed else SuccessGreen
                ),
                shape = RoundedCornerShape(12.dp)
            ) {
                Icon(
                    imageVector = if (isStreaming) Icons.Default.Stop else Icons.Default.PlayArrow,
                    contentDescription = "Streaming",
                    modifier = Modifier.size(24.dp)
                )
                Spacer(modifier = Modifier.width(12.dp))
                Text(
                    text = if (isStreaming) stringResource(R.string.stop_streaming) else stringResource(R.string.start_streaming),
                    fontWeight = FontWeight.SemiBold,
                    fontSize = 16.sp
                )
            }
            
            if (!isConnected) {
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = "Connect to a server first to start streaming",
                    style = MaterialTheme.typography.bodySmall,
                    color = TextSecondary
                )
            }
        }
    }
} 