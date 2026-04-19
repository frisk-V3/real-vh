# real-vh

A tiny, zero-config JavaScript utility to fix the infamous "100vh" issue on mobile browsers.

## The Problem
Mobile browsers (iOS Safari, Chrome, etc.) have a dynamic UI (address bar, toolbars) that changes the viewport size. The standard `100vh` in CSS often includes these bars, causing your UI to be cut off or jumpy.

## The Solution
`real-vh` automatically calculates the **actual** viewport height and sets a CSS custom property `--vh`. It stays in sync with resize and orientation events.

## Installation / Usage

### 1. Include the script
Add the generated `main.js` to your project:

```html
<script src="main.js"></script>
