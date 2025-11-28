# Creator Guide  
简单的内容制作教程

本指南适用于首次使用 VoiceScriptPlayer 的 **创作者**。  
按照以下步骤，你将完成一个包含  
**音频、字幕、图片、交互** 的小型项目。

---

## 1️⃣ 创建新项目

- 在顶部菜单中选择 **“Create New Project”**。  
- 输入名称和保存位置后，系统会自动生成基本结构。  
- 文件夹包含 `Assets`（资源）和 `Script`（事件/逻辑）目录。

➡️ 参考: [Create New Project](project/create.md)

---

## 2️⃣ 添加资源

- 将 **音频、图片、视频、Live2D、Spine 等资源** 放入 `Assets` 文件夹。  
- 在左侧的 **Resource Management** 标签页中可统一管理文件。  
- 你也可以在此添加 **变量** 或 **翻译字典**。

➡️ 参考: [Resource Management](editor/resources.md)

---

## 3️⃣ 构建时间轴

- 在时间轴中放置 **声音、字幕、图片、视频**。  
- 通过拖拽调整位置，并可进行缩放与预览播放。  
- 支持复制/粘贴、吸附对齐等基本编辑工具。

➡️ 参考: [Timeline](editor/timeline.md)

---

## 4️⃣ 添加交互与事件

- 在 **UI 标签页** 中添加按钮、文本、图片等 UI 元素。  
- 为每个元素绑定点击、比较、变量变更等 **事件**。  
- 使用简单脚本即可实现“跳转下一场景”“变量增加”等功能。

➡️ 参考:  
- [UI](editor/ui.md)  
- [Script](editor/script.md)

---

## 5️⃣ 使用 AI 功能（可选）

- 使用 Whisper 进行 **自动字幕生成（STT）**  
- 使用 DeepL / LibreTranslate 进行 **自动翻译**  
- 使用 hailuo / COEIROINK / ElevenLabs 生成 **TTS 语音**  
- 若翻译不自然，可在 **翻译字典** 中修正。

➡️ 参考: [AI Features](ai/whisper.md)

---

## 6️⃣ 测试与运行

- 点击顶部的 ▶️ 按钮进入 **播放模式（Play Mode）**。  
- 可选择普通 / 仅手部 / 推荐使用设备 / 仅使用设备 模式。  
- 内容需要麦克风时会弹出权限确认。  
- 错误会显示在屏幕上，详细日志记录在  
  `Documents/VoiceScriptPlayer/Log`。

➡️ 参考:  
- [Run](playback/run.md)  
- [Debug & Log](playback/debug.md)

---

## 7️⃣ 构建与导出

- 项目完成后，可以导出为 `.vsplayer` 格式。  
- 此文件可在 **仅播放版 VoiceScriptPlayer** 中直接运行。

➡️ 参考: [Project Management](project/manage.md)

---

## 🎯 总结

完成以上步骤后，你已具备  
**基础内容制作和交互构建** 的能力。

VoiceScriptPlayer 的核心优势是：  
**在同一个项目中统一管理文本、音频、图片、UI、交互、设备控制**。

你可以继续尝试以下进阶功能：

- Stroke 编辑  
- 设备控制  
- 高级脚本  
- UI ↔ 脚本交互  
- Live2D / Spine 动画控制

继续打造属于你的创作流程吧！
