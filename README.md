# Pixel Face: Halloween Edition

A retro 80s arcade-style animated face for a Halloween door or porch display, inspired by Edgar from Electric Dreams movie (https://www.imdb.com/title/tt0087197/). The "AI" reacts to each trick-or-treater's costume: an operator presses a key, the face plays a little "computer thinking" chirp, and answers with an expression, a reaction, or a jump scare, each with its own synthesized arcade sound.

Everything runs in a single HTML file with no install, no build step, and no internet connection required.

## Quick start

1. Download **[`dist/pixel-face-halloween.zip`](dist/pixel-face-halloween.zip)** and unzip it.
2. Double-click the **Start kiosk** launcher for your computer to run it fullscreen with no browser toolbar or frame, or just open `pixel-face.html` in any modern browser and press **Enter** for fullscreen.
3. Press keys to make the face react (see the key map below). Press **H** to show or hide the on-screen key bar.

To exit kiosk mode, press **Alt+F4** on Windows and Linux or **Cmd+Q** on a Mac.

### Hosting it online (optional)

The repo is ready for GitHub Pages. In the repository settings, open **Pages**, set the source to **Deploy from a branch**, and choose `main` and `/ (root)`. The display will be live at `https://synapse03.github.io/pixel-face-halloween/`.

## Key map

| Key | Expression | Key | Expression |
|---|---|---|---|
| Space / Esc | Hello (default) | 1 | Love |
| 2 | Evil trickster | 3 | Unicorn |
| 4 | Doe eyes | 5 | Content |
| 6 | Sleepy | 7 | Star raid (arcade scene) |
| 8 | Trophy | 9 | Blue ribbon |
| 0 | Eye roll | F | Fireworks |
| W | Wink | S | Shocked |
| T | Tears | M | Singing |
| G | Frog chase | L | Laugh |
| R | Rainbow | | |

**Halloween**

| Key | Expression |
|---|---|
| E | Eyes in the dark |
| K | Skull |
| P | Patchwork monster |

**Surprises.** Each one waits a random amount of time before it strikes, so repeat visitors can't predict it.

| Key | Sequence | Intensity |
|---|---|---|
| B | Boo! A ghost lunges out of the dark | Jump scare |
| Z | Glitch takeover: the AI malfunctions, then a face bursts out of red static | Jump scare |
| O | Lights out: darkness, dripping, then huge red eyes and a toothy grin | Jump scare |
| I | Haunted TV: a figure creeps closer through static, then rushes the screen | Jump scare |
| V | Peekaboo: hands cover the face, then reveal a silly monster | Gentle, good for little ones |
| Q | Fake goodbye: "system shutting down", then "JUST KIDDING!" | Prank, not scary |

**Costume reactions**

| Key | Reaction |
|---|---|
| C | Detective: scans the costume, then gives a verdict such as "100% SPOOKY" |
| A | Amazed: eyes widen, then a burst of stars and "WOW!" |
| Y | Applause: clapping, confetti and cheering |
| X | Thumbs up |
| N | Ooh scary: trembles, says "EEK!", hides behind its hands |
| D | Dizzy: spiral eyes and orbiting stars |
| U | Confused: tilted head and question marks |
| J | Giggle fit |

**Controls**

| Key | Action |
|---|---|
| H | Show or hide the key bar, the expression name, and the corner buttons |
| Enter | Toggle fullscreen |
| Backspace | Sound on or off |
| `-` and `=` | Volume down and up |
| Click or tap | Next expression |
| Press and hold 1 second | Same as H, for touch screens |

A good routine at the door is **C** to scan the costume, followed by a reaction: **A** for showstoppers, **N** for scary costumes, **U** for mystery costumes, **Y** for groups. Save **B**, **Z**, **O** and **I** for older kids.

## Sound

All sounds are generated live in the browser with the Web Audio API, so there are no audio files and they work offline. Browsers only allow sound after the first key press or tap; the kiosk launchers start the browser with that restriction turned off so sound works immediately. Test the volume before the doorbell starts ringing, because the jump scares are loud on purpose.

## Running as a kiosk

The launchers open Chrome or Edge in kiosk mode, falling back to Firefox on Mac and Linux, using a separate browser profile so they work even if the browser is already open. In kiosk mode or fullscreen the key bar, cursor and on-screen labels hide automatically.

On a Mac, macOS may block the launcher the first time. Right-click it, choose **Open**, then **Open** again. If it reports that it isn't executable, run `chmod +x "Start kiosk (Mac).command"` once in Terminal.

## How it works

The display is a single self-contained HTML file using plain JavaScript and the Canvas 2D API, with no libraries. The screen is a grid of LED-style pixel blocks; each expression draws into that grid every frame, and switching expressions freezes the current frame and dissolves into the new one pixel by pixel.

Rendering is tuned for smooth playback on modest hardware: each block color is pre-drawn once and reused, the glow is painted on a small low-resolution layer and stretched by the browser, the unlit backdrop is drawn once on its own layer, frame buffers are reused to avoid memory churn, and the page automatically lowers its internal resolution if a computer can't keep up.

## Repository layout

| Path | Purpose |
|---|---|
| `pixel-face.html` | The complete app |
| `index.html` | Redirects to the app, for GitHub Pages |
| `fonts/` | Press Start 2P arcade font and its license, used offline |
| `Start kiosk (Windows).bat`, `Start kiosk (Mac).command`, `start-kiosk-linux.sh` | Kiosk launchers |
| `README.txt` | Plain-text guide included in the download package |
| `dist/pixel-face-halloween.zip` | Ready-to-share distribution package |
| `build-dist.sh` | Rebuilds the distribution package after changes |

After editing any of the app files, run `./build-dist.sh` to refresh the package in `dist/`, then commit both.

## Browser support

Current Chrome, Edge, Firefox and Safari on desktop, plus Safari on iPad. Fullscreen is not available to web pages on iPhone.

## Credits

The arcade font is [Press Start 2P](https://fonts.google.com/specimen/Press+Start+2P) by CodeMan38, used under the SIL Open Font License; see `fonts/OFL.txt`. All characters and artwork are original pixel designs.
