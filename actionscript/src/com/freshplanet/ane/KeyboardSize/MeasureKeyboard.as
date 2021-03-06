package com.freshplanet.ane.KeyboardSize
{
	import flash.external.ExtensionContext;	
	
	public class MeasureKeyboard
	{
		public static var extContext:ExtensionContext = null;
		private static var _instance : MeasureKeyboard;
		
		public static function getInstance() : MeasureKeyboard
		{
			return _instance ? _instance : new MeasureKeyboard();
		}
		
		public function MeasureKeyboard() {
			
			if (!_instance)
			{
				extContext = ExtensionContext.createExtensionContext("com.freshplanet.KeyboardSize", null);
				if (!extContext)
				{
					trace("ERROR - Extension context is null. Please check if extension.xml is setup correctly.");
					return;
				}
				
				_instance = this;
			}
			else
			{
				throw Error("This is a singleton, use getInstance(), do not call the constructor directly.");
			}
		}
		
		public function getKeyboardHeight():Object {
			var retHeight:Object = extContext.call("getKeyboardHeight");
			return retHeight;
		}
		
		public function getKeyboardY():Object {
			var retY:Object = extContext.call("getKeyboardY");
			return retY;
		}

		public function setKeyboardAdjustNothing():void {
			extContext.call("setKeyboardAdjustNothing");
			return;
		}

		public function removeClearButtonForiOS():void {
			extContext.call("removeClearButtonForiOS");
			return;
		}

		public function getMultilineTextViewHeight():Object {
			var retTextViewHeight:Object = extContext.call("getMultilineTextViewHeight");
			return retTextViewHeight;
		}
		
	}
}