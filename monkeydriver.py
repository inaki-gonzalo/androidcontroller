from com.android.monkeyrunner import MonkeyRunner, MonkeyDevice
print ("Waitng for device")
device = MonkeyRunner.waitForConnection()
print ("Connected")
from subprocess import call
from subprocess import Popen, PIPE
import time
while True:
	ls = Popen(['ls'], stdin=PIPE, stdout=PIPE, stderr=PIPE)
        result1,err= ls.communicate()
	if result1 == "commands\n":
		cat = Popen(['cat','commands'], stdin=PIPE, stdout=PIPE, stderr=PIPE)
		result,err= cat.communicate()
		rm = Popen(['rm','commands'], stdin=PIPE, stdout=PIPE, stderr=PIPE)
		arr=result.split( );
		for i in range(len(arr)):
			if arr[i] == "up":
				print "up"
				device.press('KEYCODE_DPAD_UP')
			elif arr[i] == "down":
				print "down"
				device.press('KEYCODE_DPAD_DOWN')
			elif arr[i] == "right":
				print "right"
				device.press('KEYCODE_DPAD_RIGHT')
			elif arr[i] == "left":
				print "left"
				device.press('KEYCODE_DPAD_LEFT')
			elif arr[i] == "delete":
				print "delete"
				device.press('KEYCODE_DEL')
			elif arr[i] == "home":
				print "home"
				device.press('KEYCODE_HOME')
			elif arr[i] == "space":
				print ("space")
				device.press('KEYCODE_SPACE')
			elif arr[i] == "back":
				print ("back")
				device.press('KEYCODE_BACK')
			elif arr[i] == "enter":
				print ("enter")
				device.press('KEYCODE_ENTER')
			else:
				print arr[i]
				device.type(arr[i])
			
	time.sleep(0.3)

