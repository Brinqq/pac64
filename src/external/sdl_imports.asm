.ifndef SDL_IMPORTS_ASM
.equ SDL_IMPORTS_ASM, 1

.extern SDL_Init
.extern SDL_GetError
.extern SDL_GetWindowSurface
.extern SDL_FillRect
.extern SDL_updateWindowSurace

.equ SDL_INIT_AUDIO,    0x00000010
.equ SDL_INIT_VIDEO,    0x00000020
.equ SDL_INIT_JOYSTICK, 0x00000200
.equ SDL_INIT_HAPTIC,   0x00001000
.equ SDL_INIT_GAMEPAD,  0x00002000
.equ SDL_INIT_EVENTS,   0x00004000
.equ SDL_INIT_SENSOR,   0x00008000 
.equ SDL_INIT_CAMERA,   0x00010000



.equ SDL_WINDOW_FULLSCREEN,           0x0000000000000001    /**< window is in fullscreen mode */
.equ SDL_WINDOW_OPENGL,               0x0000000000000002    /**< window usable with OpenGL context */
.equ SDL_WINDOW_OCCLUDED,             0x0000000000000004    /**< window is occluded */
.equ SDL_WINDOW_HIDDEN,               0x0000000000000008    /**< window is neither mapped onto the desktop nor shown in the taskbar/dock/window list; SDL_ShowWindow() is required for it to become visible */
.equ SDL_WINDOW_BORDERLESS,           0x0000000000000010    /**< no window decoration */
.equ SDL_WINDOW_RESIZABLE,            0x0000000000000020    /**< window can be resized */
.equ SDL_WINDOW_MINIMIZED,            0x0000000000000040    /**< window is minimized */
.equ SDL_WINDOW_MAXIMIZED,            0x0000000000000080    /**< window is maximized */
.equ SDL_WINDOW_MOUSE_GRABBED,        0x0000000000000100    /**< window has grabbed mouse input */
.equ SDL_WINDOW_INPUT_FOCUS,          0x0000000000000200    /**< window has input focus */
.equ SDL_WINDOW_MOUSE_FOCUS,          0x0000000000000400    /**< window has mouse focus */
.equ SDL_WINDOW_EXTERNAL,             0x0000000000000800    /**< window not created by SDL */
.equ SDL_WINDOW_MODAL,                0x0000000000001000    /**< window is modal */
.equ SDL_WINDOW_HIGH_PIXEL_DENSITY,   0x0000000000002000    /**< window uses high pixel density back buffer if possible */
.equ SDL_WINDOW_MOUSE_CAPTURE,        0x0000000000004000    /**< window has mouse captured (unrelated to MOUSE_GRABBED) */
.equ SDL_WINDOW_MOUSE_RELATIVE_MODE,  0x0000000000008000    /**< window has relative mode enabled */
.equ SDL_WINDOW_ALWAYS_ON_TOP,        0x0000000000010000    /**< window should always be above others */
.equ SDL_WINDOW_UTILITY,              0x0000000000020000    /**< window should be treated as a utility window, not showing in the task bar and window list */
.equ SDL_WINDOW_TOOLTIP,              0x0000000000040000    /**< window should be treated as a tooltip and does not get mouse or keyboard focus, requires a parent window */
.equ SDL_WINDOW_POPUP_MENU,           0x0000000000080000    /**< window should be treated as a popup menu, requires a parent window */
.equ SDL_WINDOW_KEYBOARD_GRABBED,     0x0000000000100000    /**< window has grabbed keyboard input */
.equ SDL_WINDOW_VULKAN,               0x0000000010000000    /**< window usable for Vulkan surface */
.equ SDL_WINDOW_METAL,                0x0000000020000000    /**< window usable for Metal view */
.equ SDL_WINDOW_TRANSPARENT,          0x0000000040000000    /**< window with transparent buffer */
.equ SDL_WINDOW_NOT_FOCUSABLE,        0x0000000080000000    /**< window should not be focusable */

.endif
