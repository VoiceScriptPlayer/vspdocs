## 🚫 Hailuo 使用量超出限制 (HailuoQuotaExceeded) {#quota-error}

### 原因  
- 当前请求所需的文本长度 **超过了您本月剩余的 Hailuo 配额**。  
- Patreon 等级或 Free 计划提供的 Hailuo 使用量已经全部用完。  
- 单次请求发送过长的文本时，也可能出现此错误。

---

### 解决方法

1. **等待月度配额重置**
    - Hailuo 使用量会在 **每月 1 日** 自动重置。
    - 重置后即可正常使用。

2. **升级 Patreon 会员等级**
    - 如果您需要更多 Hailuo 使用量，可考虑升级 Patreon 会员等级。

    🔗 **Patreon 会员页面**  
    https://www.patreon.com/VoiceScriptPlayer/membership

3. **直接订阅 Hailuo**
    - 通过直接订阅 Hailuo API，可以获得更高的使用量限制。
    - 对于大量语音生成或开发用途，直接订阅更为合适。

    🔗 **Hailuo 直接订阅指南**  
    https://voicescriptplayer.github.io/vsp-docs/ko/ai/hailuo-subscription/

4. **检查 Voice Script Server API 使用量**
    - 请在程序设置中确认 API Key 是否正确绑定。
    - 如果 API Key 无效或未激活，则在检查使用量时可能发生错误。

---

## 💡 网络连接错误 (NetworkConnectionError) {#network}

### 原因  
- 您的网络连接不稳定或已断开。  
- 防火墙、VPN 或代理阻止了与 Hailuo 服务器的通信。  
- Hailuo 服务器可能暂时无响应。

### 解决方法  
1. **检查网络连接**
2. **检查防火墙或 VPN 设置**
    - 确认 `https://api.minimax.io` 未被阻止。
    - 关闭 VPN/代理后重新尝试。
3. **稍后再试**

---

## 💡 认证失败 (HailuoAuthError) {#auth-error}

### 原因  
- API Key 错误、过期或未正确填入。  
- Authorization 头格式不正确或缺失。

### 解决方法  
1. **确认 API Key 填写正确**
2. **重新生成 API Key**
3. **使用 Voice Script Server 时**
    - 请确认 Patreon API Key 已正确绑定。

---

## 💡 请求超时 (HailuoTimeoutError) {#timeout-error}

### 原因  
- Hailuo 服务器无法在限定时间内返回结果。  
- 服务器负载暂时较高。

### 解决方法  
1. **稍后重试**
2. **检查网络稳定性**
3. **缩短输入文本**

---

## 💡 请求频率限制 (HailuoRateLimitError) {#ratelimit-error}

### 原因  
- 在短时间内发送了过多请求，触发了 Hailuo 限流机制。

### 解决方法  
1. **等待 1～2 分钟后重试**
2. **将请求间隔调整为至少 1 秒**

---

## 💡 每分钟处理量限制超出 (HailuoTPMError) {#tpm-error}

### 原因  
- 超出了 Hailuo 每分钟可处理的字符数量上限。

### 解决方法  
1. **将文本拆分成更小的部分**
2. **增加请求间隔**

---

## 💡 输入含有非法字符 (HailuoIllegalCharacterError) {#illegalchar-error}

### 原因  
- 文本中包含表情符号或异常符号。

### 解决方法  
1. **删除表情符号或特殊字符**  
    例如：💕 ✨ 🔥 ❌  
2. **简化文本内容**

---

## 💡 输入格式不正确 (HailuoInvalidInputFormat) {#invalidinput-error}

### 原因  
- 必需的 `voice_setting` 或 `audio_setting` 数据不正确。  
- 文本内容或设置无法正常解析。

### 解决方法  
1. **重置语音设置**
2. **使用简单文本测试**
3. **更新到最新版本的 VoiceScriptPlayer**

---

## 💡 额度不足 (HailuoCreditError) {#credit-error}

### 原因  
- Hailuo 账户余额不足或额度已用完。

### 解决方法  
1. **检查 Hailuo 账户余额**
2. **充值后重新尝试**
3. **大量任务请考虑使用付费计划**

---

## 💡 无效的请求格式 (HailuoRequestError) {#request-error}

### 原因  
- `voice_id`、`text`、`audio_setting` 等参数无效。  
- 请求结构不符合 Hailuo 的要求。

### 解决方法  
1. **简化文本**
2. **重置语音参数**
3. **用更短的句子进行测试**

---

## 💡 服务器内部错误 (HailuoServerError) {#server-error}

### 原因  
- Hailuo 服务器出现故障或正在维护。

### 解决方法  
1. **稍后再试**
2. **查看官方公告**
3. **尝试使用不同的声音**

---

## 💡 响应解析错误 (HailuoParseError) {#json-error}

### 原因  
- Hailuo 返回了异常格式的数据。

### 解决方法  
1. **重新尝试**
2. **缩短文本内容**
3. **使用最新版本的应用程序**

---

## 💡 返回的音频数据为空 (HailuoEmptyAudio) {#empty-audio}

### 原因  
- 输入内容太短，无法生成音频。

### 解决方法  
1. **使用更长的文本**
2. **尝试不同的声音**
3. **重新尝试**

---

## 💡 音频格式错误 (HailuoInvalidAudioFormat) {#audio-format}

### 原因  
- 返回的音频数据损坏或格式错误。

### 解决方法  
1. **检查数据是否完整**
2. **使用短文本进行测试**
3. **更新应用程序**

---

## 💡 音频处理失败 (HailuoAudioProcessingError) {#process-error}

### 原因  
- 解析或转换音频时发生错误。

### 解决方法  
1. **重新尝试**
2. **使用不同文本测试**
3. **调整音频设置**

---

# hailuo-unexpected  
## 💡 意外的响应结构 (HailuoUnexpectedResponse) {#unexpected}

### 原因  
- 服务器返回的数据格式与预期不一致。

### 解决方法  
1. **稍后再试**
2. **缩短文本内容**
3. **更新到最新版本**

---

# hailuo-unknown  
## 💡 未知错误 (HailuoUnknownError) {#unknown-error}

### 原因  
- 发生了未预料的问题。

### 解决方法  
1. **重启应用程序**
2. **重置设置后重试**
3. **如持续出现，请联系开发者**
