

## Phone-only cloud APK build (GitHub Actions)
This repository includes a starter GitHub Actions workflow at `.github/workflows/android.yml`.
1. Create a new **public** GitHub repository from your phone.
2. Upload all project files, including the hidden `.github/workflows/android.yml` file.
3. Open the repository's **Actions** tab and enable Actions if prompted.
4. Select **Build Android APK**, then choose **Run workflow**.
5. When the run completes, open it and download the `MLBB-Classic-Offline-APK` artifact.
6. Extract the downloaded artifact ZIP to get the APK.

This workflow is a starter and may need adjustments to match the Godot export template / Android SDK requirements. It does not mean an APK has already been built. Use a private repo if you do not want your source project public, subject to GitHub plan and Actions limits.
