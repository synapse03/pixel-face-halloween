PIXEL FACE
==========

What's in this folder
  pixel-face.html               The animation. Double-click to open in any browser.
  fonts/                        The arcade font, so the key labels work offline.
  Start kiosk (Windows).bat     Opens it fullscreen with no browser toolbar or frame.
  Start kiosk (Mac).command     Same, for Mac.
  start-kiosk-linux.sh          Same, for Linux / Raspberry Pi.
Keep these files together in one folder.

Fullscreen
  Kiosk (best for a display or presentation)
    Double-click the "Start kiosk" file for your computer. It opens Chrome or Edge
    (Firefox on Mac/Linux if neither is installed) in kiosk mode: the whole screen,
    with no tabs, address bar, or window frame. The key bar and cursor hide on their own.
    To exit:  Windows / Linux: Alt+F4    Mac: Cmd+Q

    Mac: the first time, macOS may block the launcher. Right-click it, choose Open,
    then Open again. If it says it isn't executable, run once in Terminal:
      chmod +x "Start kiosk (Mac).command"

  Quick fullscreen (any browser)
    Open pixel-face.html and press Enter, or click "Enter fullscreen" in the top-right
    corner. Press Esc (or Enter) to leave. F11 on Windows also works.
    iPad: open the published link in Safari and tap "Enter fullscreen".
    (iPhone browsers don't allow web pages to go fullscreen.)

Keys
  Space / Esc  Hello (default)      1 Love          2 Evil         3 Unicorn
  4 Doe eyes   5 Content            6 Sleepy        7 Star raid    8 Trophy
  9 Blue ribbon  0 Eye roll         F Fireworks     W Wink         S Shocked
  T Tears      M Singing            G Frog chase   L Laugh
  R Rainbow

  Halloween
  E Eyes in the dark   K Skull   P Patchwork monster

  Surprises (each waits a random time before it strikes)
  B Boo!   Z Glitch takeover   O Lights out   I Haunted TV
  V Peekaboo (gentle, for little ones)   Q Fake goodbye (prank)

  Costume reactions
  A Amazed   Y Applause   X Thumbs up   N Ooh scary   D Dizzy
  C Detective (scans the costume, then gives a verdict)   U Confused   J Giggle fit
  H            Show / hide the key bar. While hidden, the expression name at the top
               and the corner buttons (fullscreen, sound) are hidden too, for a clean display.
               On a touch screen, press and hold anywhere for 1 second to do the same.
  Enter        Toggle fullscreen
  Backspace    Sound on / off
  - and =      Volume down / up
  Click / tap  Next expression

Sound
  Every expression has its own retro arcade sound, generated live by the browser (no
  audio files, works offline). Each change starts with a short "computer thinking" chirp,
  so it feels like the AI is reacting. Browsers only allow sound after the first key press
  or tap; the kiosk launchers turn that restriction off so sound works right away.
  B, Z, O and I are real jump scares: a quiet build-up, then a loud blast and a flash.
  The wait before each one changes every time. Use V (Peekaboo) or Q (Fake goodbye) for
  little ones, and turn the volume down with the - key if needed.

Performance
  The page renders with pre-drawn pixel blocks and a low-resolution glow layer, and
  automatically lowers its internal resolution if a computer can't keep up, so it
  stays smooth on slower PCs, TVs and Raspberry Pi.

The arcade font is Press Start 2P by CodeMan38, under the SIL Open Font License (fonts/OFL.txt).
