## 🚫 Hailuo Quota Exceeded (HailuoQuotaExceeded) {#quota-error}

### Cause  
- The number of characters required for this request **exceeds your remaining monthly Hailuo quota**.  
- You have used all your Hailuo usage included in your Patreon tier or the Free plan.  
- Very long text in a single request may also trigger the quota limit quickly.

---

### How to Fix

1. **Wait for the Monthly Reset**
    - Hailuo usage resets automatically **on the 1st of every month**.
    - After the reset, requests will be processed normally again.

2. **Upgrade Your Patreon Tier**
    - If you need more Hailuo usage, consider upgrading your Patreon membership.

    🔗 **Patreon Membership**  
    https://www.patreon.com/VoiceScriptPlayer/membership

3. **Subscribe to Hailuo Directly**
    - Instead of using the Voice Script Server API, you can directly subscribe to the Hailuo API for larger or unlimited usage.
    - Recommended for heavy usage or professional work.

    🔗 **Direct Hailuo Subscription Guide**  
    https://voicescriptplayer.github.io/vsp-docs/ko/ai/hailuo-subscription/

4. **Check Your Voice Script Server API Settings**
    - Make sure your API key is correctly entered in the program settings.
    - If the API key is invalid or disabled, usage retrieval may fail and cause quota errors.

---

## 💡 Network Connection Error (NetworkConnectionError) {#network}

### Cause  
- Your internet connection is unstable or disconnected.  
- A firewall, VPN, or Proxy is blocking access to the Hailuo server.  
- The Hailuo server may be temporarily unreachable.

### How to Fix  
1. **Check Your Internet Connection**
    - Ensure Wi-Fi or wired network is functioning normally.

2. **Check Firewall or VPN**
    - Make sure `https://api.minimax.io` is not being blocked.
    - Disable VPN or Proxy and try again.

3. **Try Again Later**
    - This may be a temporary server issue. Retry after a few minutes.

---

## 💡 Authentication Error (HailuoAuthError) {#auth-error}

### Cause  
- The Hailuo API key is incorrect or expired.  
- The Authorization header is in an invalid format or missing.

### How to Fix  
1. **Verify Your API Key**
    - Copy the key exactly from your Hailuo dashboard.

2. **Regenerate the Key**
    - If the key has expired or been deleted, generate a new one.

3. **Using Voice Script Server**
    - Ensure the Patreon-linked API key is active and correctly applied.

---

## 💡 Request Timeout (HailuoTimeoutError) {#timeout-error}

### Cause  
- The Hailuo server did not respond within the time limit.  
- Server load may be temporarily high.

### How to Fix  
1. **Try Again Later**
2. **Check Network Stability**
3. **Shorten the Input Text**

---

## 💡 Request Rate Limit (HailuoRateLimitError) {#ratelimit-error}

### Cause  
- Too many requests were sent in a short period of time.

### How to Fix  
1. **Wait 1–2 Minutes**
    - Rate limits automatically reset.

2. **Increase Delay Between Requests**
    - Wait at least 1 second between each request.

---

## 💡 TPM (Token Per Minute) Exceeded (HailuoTPMError) {#tpm-error}

### Cause  
- The number of characters processed per minute exceeded the allowed limit.

### How to Fix  
1. **Split Text Into Smaller Chunks**
2. **Increase the Delay Between Requests**

---

## 💡 Unsupported Characters Detected (HailuoIllegalCharacterError) {#illegalchar-error}

### Cause  
- The text contains emojis or symbols that Hailuo cannot process.

### How to Fix  
1. **Remove Emojis and Special Characters**
    - Examples: 💕 ✨ 🔥 ❌

2. **Simplify the Text**

---

## 💡 Invalid Input Format (HailuoInvalidInputFormat) {#invalidinput-error}

### Cause  
- Required voice settings or audio settings are missing or invalid.  
- The text or settings were not recognized properly.

### How to Fix  
1. **Reset Voice Settings**
2. **Simplify the Text**
3. **Use the Latest Version of VoiceScriptPlayer**

---

## 💡 Insufficient Credits (HailuoCreditError) {#credit-error}

### Cause  
- Your Hailuo account has insufficient balance or free usage has expired.

### How to Fix  
1. **Check Your Hailuo Account Balance**
2. **Recharge and Try Again**
3. **Consider a Paid Plan for Heavy Usage**

---

## 💡 Bad Request (HailuoRequestError) {#request-error}

### Cause  
- Some text or voice settings contain invalid values or are out of range.

### How to Fix  
1. **Simplify the Text**
2. **Reset Voice Settings**
3. **Try With a Shorter Sentence**

---

## 💡 Server Error (HailuoServerError) {#server-error}

### Cause  
- Internal Hailuo server issue  
- Temporary outage or maintenance

### How to Fix  
1. **Try Again Later**
2. **Check Official Notices or Community Channels**
3. **Try With a Different Voice**

---

## 💡 Response Parsing Error (HailuoParseError) {#json-error}

### Cause  
- The server returned an unexpected response.

### How to Fix  
1. **Try Again**
2. **Reduce Text Length**
3. **Use the Latest Program Version**

---

## 💡 Empty Audio Output (HailuoEmptyAudio) {#empty-audio}

### Cause  
- Extremely short text may generate no audio.  
- Certain voices may fail to produce audio depending on the content.

### How to Fix  
1. **Use a Longer Sentence**
2. **Try a Different Voice**
3. **Retry**

---

## 💡 Invalid Audio Format (HailuoInvalidAudioFormat) {#audio-format}

### Cause  
- The server returned corrupted or invalid audio data.

### How to Fix  
1. **Try Again**
2. **Test With a Shorter Text**
3. **Check for Program Updates**

---

## 💡 Audio Processing Error (HailuoAudioProcessingError) {#process-error}

### Cause  
- The audio data could not be decoded properly.

### How to Fix  
1. **Retry**
2. **Use a Different Text**
3. **Try With Different Voice Settings**

---

# hailuo-unexpected  
## 💡 Unexpected Response (HailuoUnexpectedResponse) {#unexpected}

### Cause  
- Required fields are missing or the server returned an irregular structure.

### How to Fix  
1. **Try Again Later**
2. **Reduce Text Length**
3. **Update VoiceScriptPlayer to the Latest Version**

---

# hailuo-unknown  
## 💡 Unknown Error (HailuoUnknownError) {#unknown-error}

### Cause  
- An unexpected problem occurred.

### How to Fix  
1. **Restart the Program**
2. **Reset Settings and Retry**
3. **Contact the Developer if the Issue Persists**
