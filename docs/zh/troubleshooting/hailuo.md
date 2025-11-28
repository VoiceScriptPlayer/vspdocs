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

## 💡 余额不足 (HailuoInsufficientBalanceError) {#balance-error}

### 原因
- Hailuo 账户的信用点或余额不足，无法处理请求。

### 解决方法
1. **检查账户余额**
    - 请在 Hailuo 仪表板中确认剩余余额。
2. **进行充值**
    - 若要继续使用服务，需要对账户进行充值。

---

## 💡 内部服务器错误 (HailuoInternalError) {#internal-error}

### 原因
- Hailuo 服务器内部发生了意外问题。

### 解决方法
1. **稍后重试**
    - 很可能是暂时性故障。请稍作等待后再次尝试。
2. **检查状态**
    - 如果问题持续存在，请查看服务公告。

---

## 💡 检测到敏感输入 (HailuoSensitiveInputError) {#sensitive-input-error}

### 原因
- 输入的文本提示词包含政策不允许的敏感内容（政治、暴力、色情等）。

### 解决方法
1. **修改提示词**
    - 请检查输入内容，修改或删除敏感词汇及表达。

---

## 💡 检测到敏感输出 (HailuoSensitiveOutputError) {#sensitive-output-error}

### 原因
- 生成的结果被判定为敏感内容，输出已被拦截。

### 解决方法
1. **调整输入内容**
    - 请修改输入提示词，引导生成不同的结果。

---

## 💡 系统错误 (HailuoSystemError) {#system-error}

### 原因
- 由于数据库或系统组件的问题，请求失败。

### 解决方法
1. **重试**
    - 可能是服务器负载等导致的暂时性问题，请稍后重试。

---

## 💡 超过连接限制 (HailuoConnectionLimitError) {#connection-limit-error}

### 原因
- 同时发起的连接请求过多，服务器拒绝处理。

### 解决方法
1. **调整请求频率**
    - 减少并发请求数，或稍作等待后再发起请求。
2. **联系支持**
    - 如果问题持续存在，可能需要联系 Hailuo 支持团队。

---

## 💡 ASR 相似度检查失败 (HailuoASRCheckError) {#asr-check-error}

### 原因
- 提供的音频文件语音与输入的验证文本内容不一致。

### 解决方法
1. **检查文件和文本**
    - 请确保上传的音频 (`file_id`) 与验证文本 (`text_validation`) 完全匹配。

---

## 💡 克隆提示词错误 (HailuoClonePromptError) {#clone-prompt-error}

### 原因
- 用于语音克隆 (Voice Cloning) 的提示音频或文本存在问题。

### 解决方法
1. **检查音频质量**
    - 请确认提示音频清晰且无背景噪音。
2. **核对提示文本**
    - 请确保音频内容与提示文本完全一致。

---

## 💡 参数错误 (HailuoInvalidParamsError) {#invalid-params-error}

### 原因
- API 请求中包含的配置值或 JSON 结构不正确。

### 解决方法
1. **检查请求参数**
    - 请确认发送数据的字段名和值格式是否符合 API 说明。

---

## 💡 无效的 Voice ID (HailuoInvalidVoiceIDError) {#invalid-voiceid-error}

### 原因
- 请求的 Voice ID 不存在或格式错误。
- 引用了不可用的样本。

### 解决方法
1. **确认 ID**
    - 请在列表中再次确认您尝试使用的模型或 Voice ID 是否正确。

---

## 💡 时长错误 (HailuoDurationError) {#duration-error}

### 原因
- 上传的语音文件时长太短或太长。

### 解决方法
1. **调整文件时长**
    - 请将音频编辑为适合语音克隆的时长（请确认推荐时长）后重试。

---

## 💡 Voice ID 重复 (HailuoDuplicateVoiceIDError) {#duplicate-voiceid-error}

### 原因
- 您尝试创建的 Voice ID 已存在于系统中。

### 解决方法
1. **更改 ID**
    - 请尝试使用不同的 Voice ID 进行创建。

---

## 💡 拒绝访问 (HailuoAccessDeniedError) {#access-denied-error}

### 原因
- 您没有权限使用此 Voice ID。（非本人创建或未被共享）

### 解决方法
1. **确认所有权**
    - 请确认这是您创建的语音，或者是已公开的语音。

---

## 💡 请求增长率限制 (HailuoRateGrowthError) {#rate-growth-error}

### 原因
- 短时间内请求量急剧增加，为保护系统已被拦截。

### 解决方法
1. **控制请求速度**
    - 请避免突然的大量请求，并逐渐增加请求频率。

---

## 💡 提示音频过长 (HailuoPromptAudioTooLongError) {#prompt-too-long-error}

### 原因
- 用于语音克隆的提示音频超过了允许的时长。

### 解决方法
1. **裁剪音频**
    - 请将提示音频文件编辑至 **8秒以内** 并重新上传。

---

## 💡 无效的 API 密钥 (HailuoInvalidApiKeyError) {#invalid-apikey-error}

### 原因
- API 密钥格式错误或密钥已失效。

### 解决方法
1. **重新确认 API 密钥**
    - 请确认密钥是否正确，如果已过期请重新生成。

---

## 💡 超出使用限制 (HailuoUsageLimitExceededError) {#usage-limit-error}

### 原因
- 您已耗尽当前周期（小时/日/月）允许的 API 调用次数或使用配额。

### 解决方法
1. **等待资源更新**
    - 请等待下一个更新周期（通常为 5 小时窗口）。

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
