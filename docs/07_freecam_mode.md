# F7 Freecam Mode — Implementation Guide

## Overview

The ProTanki MITM proxy now includes a **F7 toggle for spectator/free camera mode**, allowing you to detach the camera from your tank and explore the map freely. **The tank is frozen while freecam is active** — it won't move even if you press WASD.

## How It Works

### Activation
1. **Press F7** during a battle
   - The camera detaches from your tank and becomes independent
   - SpectatorCameraController activates with fast WASD + mouse controls
   - **Your tank freezes and stops responding to WASD input**
   - Camera flies at high speed (3500 units/frame) for quick map exploration

### Controls in Freecam Mode
| Key | Action |
|-----|--------|
| **W** | Move camera forward |
| **A** | Move camera left |
| **S** | Move camera backward |
| **D** | Move camera right |
| **Mouse** | Look around (rotation) |
| **Spacebar** | Boost upward (increased vertical speed) |
| **Shift** | Move downward |
| **F7** | Return to normal tank-following camera |

### Deactivation
- **Press F7 again**
  - SpectatorCameraController deactivates
  - Camera returns to normal follow-tank mode
  - Tank movement resumes (will be at the position it was before freecam)
  - Input listeners detach from game stage

## Technical Implementation

### Patches Applied
- **Patch B (TankEntity)**: Added check for `_freecam_active_` — if true, skip all noclip movement processing (freezes tank)
- **Patch C (DriveController)**: Added `_freecam_active_` and `_freecam_ctrl_` static variables
- **Patch D (TankInputController)**: Added F7 (keyCode 118) handler to toggle spectator camera
- **Patch G (SpectatorCameraController)**: Increased camera flight speed from 1300 to 3500 units/frame

### Key Classes
- `§var const get§.§each const set§` — SpectatorCameraController (free-roam camera)
- `§var set var§.§5214235669235682123423632234§` — CameraControllerBase (with static BattleService)
- `§if for switch§` — DriveController (holds shared static state)

## Interaction with Other Features

### With Noclip (F8)
- **Independent features**
  - F7 activates freecam (camera detached, tank frozen)
  - F8 activates noclip (wall-pass, tank movement with Ctrl/Shift/R)
  - Cannot be active simultaneously (tank must choose freecam OR noclip)

### With Map Exploration
- **Perfect for**:
  - Scouting map layout before engagement
  - Reviewing tactical positions and spawns
  - Recording gameplay footage with smooth camera motion
  - Finding map details/secrets
  - Planning attack routes

### Tank Position During Freecam
- Tank remains **frozen at the position it was in when F7 was pressed**
- No update packets sent to server while camera is exploring
- When F7 is pressed again, tank resumes normal position

## Implementation Details

### Obfuscated Identifiers
```
Package: §var const get§
Class: §each const set§ (SpectatorCameraController)

Package: §var set var§  
Class: §5214235669235682123423632234§ (CameraControllerBase)

Package: §5214232446232459123423632234§
Class: §if for switch§ (DriveController)
```

### Method References
- `§extends for include§()` — activate camera controller
- `§5214234355234368123423632234§()` — deactivate camera controller
- `setFollowCamera()` — restore tank-follow mode

### Static Fields in DriveController
```as3
public static var _freecam_active_:Boolean = false;
public static var _freecam_ctrl_:Object = null;
```

### Camera Speed Constants
```as3
cam_spd = 3500 units/frame  (was 1300, increased for faster exploration)
```

## Notes

- **Server State**: Tank position is NOT synchronized while freecam is active; tank network state freezes
- **Performance**: Free camera is lightweight—no special rendering, only input listener injection
- **Return to Combat**: Press F7 again to immediately return to normal tank mode
- **Respawn**: If you die while freecam is active, camera automatically returns to tank view
- **Reset on Battle End**: Camera mode resets when battle ends

## Use Cases

### Map Scouting
```
1. Spawn in arena
2. Press F7 to detach camera
3. Use WASD + mouse to fly around
4. Press F7 to return and engage enemies
```

### Tactical Planning
```
1. Die or stay safe after respawn
2. Press F7 to scout while team fights
3. Mark enemy positions mentally
4. Resume play when freecam exploration ends
```

### Video Recording
```
1. Press F7 to get smooth cinematic camera motion
2. Fly around with steady WASD + mouse control
3. Record high-quality gameplay perspectives
4. Switch back to normal view for actual combat
```

## Performance & Compatibility

- **Camera Speed**: 3500 units/frame is 2.7x faster than default (1300)
- **Input Responsiveness**: Instant toggle, no lag
- **Memory**: Minimal overhead—reuses existing SpectatorCameraController
- **Works with**: All map types, all tank types, all game modes

## Future Enhancements

Possible additions:
- Camera speed slider (adjustable via console)
- Path recording for automated camera replays
- Freecam state persistence across respawns
- Smooth camera transitions between tanks
- Cinematic mode with dolly/crane effects

