import pyautogui
import time

while True:
    
    time.sleep(1)

    
    original_position = pyautogui.position()

    
    pyautogui.moveRel(10, 10)  
    time.sleep(0.5)  
    pyautogui.moveTo(original_position)  

    
    pyautogui.press('space')