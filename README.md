cpuminer-rplant HiveOS Wrapper

This repository provides a custom wrapper for integrating multiple cpuminer binaries into HiveOS. The wrapper automatically detects CPU capabilities and selects the most optimized binary available, ensuring compatibility across different hardware configurations.

Key Features
Automatic CPU detection: Inspects /proc/cpuinfo and selects the appropriate binary in priority order (Ryzen → AVX512 → AVX2 → SSE4.2 → SSE2).

Fallback mechanism: If the selected binary is not present, the wrapper defaults to cpuminer-sse2 to prevent execution errors.

HiveOS integration: Parses miner logs and outputs JSON statistics in the format expected by HiveOS.

Thread-level monitoring: Provides per-thread hashrate and temperature reporting for accurate monitoring.

Benefits
Simplifies deployment of cpuminer on HiveOS.

Ensures robust error handling and fallback for uninterrupted mining.

Delivers consistent and detailed monitoring aligned with HiveOS requirements.
