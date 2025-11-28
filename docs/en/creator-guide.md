# Creator Guide  
A simple tutorial for creating your first content

This guide is for **creators** who are new to VoiceScriptPlayer.  
By following the steps below, you will complete a small project containing  
audio, subtitles, images, and basic interaction.

---

## 1️⃣ Create a New Project

- Select **"Create New Project"** from the top menu.  
- Enter a title and choose a save location to automatically generate the basic structure.  
- The created directory includes `Assets` (resources) and `Script` (events/logic) folders.

➡️ See: [Create New Project](project/create.md)

---

## 2️⃣ Add Resources

- Add **audio, images, videos, Live2D, Spine resources** into the `Assets` folder.  
- Manage all files easily in the **Resource Management** tab on the left.  
- You may also register **variables** or **translation dictionaries** here.

➡️ See: [Resource Management](editor/resources.md)

---

## 3️⃣ Build the Timeline

- Place **sound, subtitles, images, and videos** on the timeline.  
- Drag to adjust positions, zoom in/out, and preview.  
- Basic editing tools such as copy/paste and snap alignment are available.

➡️ See: [Timeline](editor/timeline.md)

---

## 4️⃣ Add Interaction & Events

- Add UI elements such as buttons, text, or images from the **UI tab**.  
- Bind events like click, comparison, or variable changes to each element.  
- Use simple scripts to perform actions like “go to next scene” or “increase a variable.”

➡️ See:  
- [UI](editor/ui.md)  
- [Script](editor/script.md)

---

## 5️⃣ Use AI Features (Optional)

- Generate subtitles using **Whisper (STT)**.  
- Translate text using **DeepL** or **LibreTranslate**.  
- Create voice lines with **hailuo**, **COEIROINK**, or **ElevenLabs**.  
- If translations are awkward, refine them using the **Translation Dictionary**.

➡️ See: [AI Features](ai/whisper.md)

---

## 6️⃣ Test & Run

- Press the ▶️ icon at the top to enter **Play Mode**.  
- Choose the appropriate mode (Normal / Hand-only / Device Recommended / Device-only).  
- If needed, microphone permissions will be requested.  
- Errors are shown on-screen, and detailed logs are saved in  
  `Documents/VoiceScriptPlayer/Log`.

➡️ See:  
- [Run](playback/run.md)  
- [Debug & Log](playback/debug.md)

---

## 7️⃣ Build & Export

- When your project is complete, export it as a `.vsplayer` package.  
- This package can be played directly in the **Player-only version of VoiceScriptPlayer**.

➡️ See: [Project Management](project/manage.md)

---

## 🎯 Wrap-up

If you completed all steps above,  
you now have all the basics needed to create a fully functional piece of content.

VoiceScriptPlayer allows you to manage  
**text, audio, images, UI, interaction, and device control—all in one project**.

Next steps might include exploring:

- Stroke editing  
- Device control  
- Advanced scripting  
- UI ↔ Script interaction  
- Live2D / Spine animation control

Continue building your own creative workflow!
