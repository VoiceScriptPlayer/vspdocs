## 🚫 Hailuo 利用上限超過 (HailuoQuotaExceeded) {#quota-error}

### 原因  
- このリクエストで必要な文字数が、**現在残っている月間 Hailuo クォータを超えています。**  
- Patreon の支援ティア、または Free プランで提供される Hailuo の使用量をすべて使い切っています。  
- 1 回のリクエストで非常に長いテキストを送信すると、上限にすぐ到達する場合があります。

---

### 解決方法

1. **月間リセットを待つ**
    - Hailuo の使用量は **毎月 1 日** に自動でリセットされます。
    - リセット後は正常にリクエストを処理できます。

2. **Patreon の支援ティアをアップグレードする**
    - Hailuo の利用量を増やしたい場合は、上位の Patreon ティアをご検討ください。

    🔗 **Patreon メンバーシップ**  
    https://www.patreon.com/VoiceScriptPlayer/membership

3. **Hailuo を直接契約する**
    - Voice Script Server API を使用せず、Hailuo API を直接購読することで、より大きな使用量を確保できます。
    - 大量の音声生成や開発用途では、直接契約の方が適している場合があります。

    🔗 **Hailuo 直接連携ガイド**  
    https://voicescriptplayer.github.io/vsp-docs/ko/ai/hailuo-subscription/

4. **Voice Script Server API の使用量と設定を確認する**
    - プログラム設定で API キーが正しく登録されているか確認してください。  
    - API キーが無効または非アクティブの場合、使用量の取得に失敗しエラーが発生することがあります。

---

## 💡 ネットワーク接続エラー (NetworkConnectionError) {#network}

### 原因  
- インターネット接続が不安定、または切断されています。  
- Firewall、VPN、Proxy が Hailuo サーバーへの接続を遮断しています。  
- Hailuo サーバーが一時的に応答していない可能性があります。

### 解決方法  
1. **インターネット接続を確認する**
2. **Firewall や VPN を確認する**
    - `https://api.minimax.io` がブロックされていないか確認してください。
    - VPN/Proxy を無効化して再試行してください。
3. **時間をおいて再試行する**

---

## 💡 認証エラー (HailuoAuthError) {#auth-error}

### 原因  
- Hailuo API キーが間違っている、または期限切れです。  
- Authorization ヘッダーが無効な形式、または欠落しています。

### 解決方法  
1. **API キーが正しいか確認する**
2. **新しい API キーを発行する**
3. **Voice Script Server を使用している場合**
    - Patreon 連携の API キーが有効であることを確認してください。

---

## 💡 タイムアウト (HailuoTimeoutError) {#timeout-error}

### 原因  
- Hailuo サーバーの応答がタイムリミット内に返ってきませんでした。  
- 一時的にサーバー負荷が高くなっています。

### 解決方法  
1. **しばらく待って再試行する**
2. **ネットワークの安定性を確認する**
3. **テキストを短くする**

---

## 💡 リクエスト制限 (HailuoRateLimitError) {#ratelimit-error}

### 原因  
- 短時間に大量のリクエストを送信しました。

### 解決方法  
1. **1〜2 分待って再試行する**
2. **リクエスト間隔を広げる（1 秒以上推奨）**

---

## 💡 TPM（1 分あたりの処理量）超過 (HailuoTPMError) {#tpm-error}

### 原因  
- 1 分あたりの処理可能文字数の上限を超えました。

### 解決方法  
1. **テキストを分割する**
2. **リクエスト間隔を長くする**

---

## 💡 不正な文字が含まれている (HailuoIllegalCharacterError) {#illegalchar-error}

### 原因  
- テキストに絵文字や特殊記号が含まれています。

### 解決方法  
1. **絵文字・特殊記号を削除する**  
    例：💕 ✨ 🔥 ❌  
2. **テキストを簡潔にする**

---

## 💡 入力形式エラー (HailuoInvalidInputFormat) {#invalidinput-error}

### 原因  
- 必要な `voice_setting` または `audio_setting` が正しくありません。  
- テキストまたは設定を正しく解釈できませんでした。

### 解決方法  
1. **音声設定をリセットする**
2. **簡単なテキストで試す**
3. **最新バージョンの VoiceScriptPlayer を使用する**

---

## 💡 クレジット不足 (HailuoCreditError) {#credit-error}

### 原因  
- Hailuo アカウントの残高が不足しています。

### 解決方法  
1. **Hailuo アカウントの残高を確認する**
2. **チャージして再試行する**
3. **大量利用の場合は有料プランを検討する**

---

## 💡 不正リクエスト (HailuoRequestError) {#request-error}

### 原因  
- `voice_id`、`text`、`audio_setting` が無効な値になっています。

### 解決方法  
1. **テキストを簡潔にする**
2. **音声設定を初期化する**
3. **短い文で再試行する**

---

## 💡 サーバーエラー (HailuoServerError) {#server-error}

### 原因  
- Hailuo サーバー内部で問題が発生しました。

### 解決方法  
1. **時間をおいて再試行する**
2. **公式のお知らせを確認する**
3. **別の声で試してみる**

---

## 💡 レスポンス解析エラー (HailuoParseError) {#json-error}

### 原因  
- サーバーが予期しない形式のデータを返しました。

### 解決方法  
1. **再試行する**
2. **テキストを短くする**
3. **最新版のアプリを使用する**

---

## 💡 空の音声データ (HailuoEmptyAudio) {#empty-audio}

### 原因  
- テキストが短すぎる場合、音声が生成されないことがあります。

### 解決方法  
1. **もう少し長い文で試す**
2. **別の声で試す**
3. **再試行する**

---

## 💡 音声フォーマットエラー (HailuoInvalidAudioFormat) {#audio-format}

### 原因  
- サーバーから返された音声データが破損している可能性があります。

### 解決方法  
1. **再試行する**
2. **短いテキストでテストする**
3. **アプリの更新を確認する**

---

## 💡 音声処理失敗 (HailuoAudioProcessingError) {#process-error}

### 原因  
- 音声データのデコードに失敗しました。

### 解決方法  
1. **再試行する**
2. **別のテキストで試す**
3. **音声設定を変更する**

---

# hailuo-unexpected  
## 💡 予期しない応答 (HailuoUnexpectedResponse) {#unexpected}

### 原因  
- 必要なフィールドが欠落している、またはサーバー応答が不規則です。

### 解決方法  
1. **時間をおいて再試行する**
2. **テキストを短くする**
3. **VoiceScriptPlayer を最新版に更新する**

---

# hailuo-unknown  
## 💡 不明なエラー (HailuoUnknownError) {#unknown-error}

### 原因  
- 予期しない問題が発生しました。

### 解決方法  
1. **アプリを再起動する**
2. **設定をリセットして再試行する**
3. **問題が続く場合は開発者に連絡する**
