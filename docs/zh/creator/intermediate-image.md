# 📘 图像联动：webp 帧控制 & Tick 脚本进阶

本教程将学习如何在 UI 中放置 webp 图像，  
并根据 X0 输入值实时选择 webp 的特定帧。

当你导入 webp 文件时，VSP 会自动将其转换为 cwebp，  
并允许你通过 UI Image 的 Frame 属性直接控制具体帧。

同时，我们将使用 UI 主面板（Main Panel）中的 Tick Script 功能，  
使 webp 在 UI 显示期间实时更新，实现交互动画效果。

---

# 🧭 本教程将学习以下内容

- webp → cwebp 自动转换机制  
- 在 UI 中放置 webp  
- 使用 Tick Script 实时执行逻辑  
- 将 X0 输入值映射到 webp 帧  
- 使用局部变量进行帧控制的实战技巧  

---

# 1️⃣ 准备 webp 文件

本教程使用以下 gauge webp 示例：

![示例图片](../images/gauage.webp)

该 webp 由 0~100 共 101 帧组成。

👉 你可以下载后进行练习！

---

# 2️⃣ 创建 UI 界面

1. 点击顶部菜单的 UI 标签  
2. 选择“新建 UI（New UI）”  
3. 将生成一个空白 UI 画面  

---

# 3️⃣ 在 UI 中放置 webp 图像

![alt text](../images/gauage_setting.png)

1. 从左侧控件列表拖拽 Image 控件  
2. 放置到 UI 中  
3. 在右侧属性面板选择 Source（图像源）  
4. 选择你的 webp 文件  

VSP 会自动将 webp 转换为 cwebp，  
并允许你通过 Frame 属性控制具体帧。

![alt text](../images/image_setting.png)

关闭 IsPlay → 即可通过脚本手动控制 Frame

---

# 4️⃣ 使用 Tick Script

Tick Script 是一种 **在 UI 每一帧都会执行的特殊脚本**。

若想让 webp 的 Frame 属性根据输入实时变化，  
Tick Script 是必不可少的。

---

## 进入 Tick Script

1. 在 UI 结构树中选择 Main 面板  
2. 右侧属性 → Tick → 编辑（Edit）

![进入 Tick Script](../images/ui_tick_edit.webp)

---

# 5️⃣ 将 X0 值映射到 webp 的帧

现在开始实现核心功能。

因为 webp 动画有 0~100 帧，  
而 X0 的范围为 0.0~1.0，  
所以需要将范围进行转换。

简化后的目标流程：

1) r ← X0  
2) r ← r * 100  
3) Frame ← r  

我们将一步步来配置。

---

# 📌 5-1) 创建用于存储帧的局部变量

1. 在 Tick Script 右侧面板的 Variables 区域点击 +  
2. 输入变量名：`r`

该变量用于存储与计算 X0 转换后的帧编号。

---

# 📌 5-2) 将 X0 赋值给 r

Tick 的第一个指令：

- 将变量 r 赋值为 Axis → X0  
- Duration = 0 秒

---

# 📌 5-3) 将 X0(0~1) 转换为帧编号(0~100)

第二个指令：

- 将变量 r 乘以 100  
- Duration = 0 秒

转换结果示例：

| X0 | r（乘以后） |
|----|-------------|
| 0.00 | 0 |
| 0.25 | 25 |
| 0.50 | 50 |
| 1.00 | 100 |

---

# 📌 5-4) 将 r 值写入 Image 的 Frame

第三个指令：

- 将变量 (CurrentUI | NewImage | Frame) 赋值为 r  
- Duration = 0 秒

这样图像的 Frame 就会被实时更新。

---

# 📸 Tick Script 实际结构示例

![Tick Script 示例](../images/tick_x0_to_frame.png)

脚本逻辑总结：

变量 r ← X0  
变量 r ← r * 100  
Image.Frame ← r  

---

# 6️⃣ 全部逻辑总结

整个教程可以浓缩为三句话：

r ← X0  
r ← r * 100  
Frame ← r  

将这三步写入 Tick Script 后，  
webp 便会随着设备输入（X0）实时变化。

---

# ✨ 完成效果

![完成示例](../images/image_complete.webp)

现在你可以制作：

- 基于 X0 输入的动态仪表盘  
- 根据强度变化的表情图像  
- 实时响应式 UI 动画  
- 无需 Spine 的轻量级动画系统  

---

# ➡️ 下一个教程

学习完图像 & webp 控制后，  
下一步将进入进阶音频控制：

👉 [进阶音频控制](intermediate-sound.md)
