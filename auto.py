import pyautogui
import time

while True:
    # Wait for 120 seconds
    time.sleep(1)

    # Save the current mouse position
    original_position = pyautogui.position()

    # Move the mouse cursor to a new position and back
    pyautogui.moveRel(10, 10)  # Move relative to the current position
    time.sleep(0.5)  # Short pause to ensure the cursor has moved
    pyautogui.moveTo(original_position)  # Move back to the original position

    # Press the space key
    pyautogui.press('space')