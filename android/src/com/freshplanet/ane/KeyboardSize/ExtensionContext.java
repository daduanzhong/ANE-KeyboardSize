package com.freshplanet.ane.KeyboardSize;

import java.util.HashMap;
import java.util.Map;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;

public class ExtensionContext extends FREContext {

	@Override
	public void dispose() {

	}

	@Override
	public Map<String, FREFunction> getFunctions() {
		
		Map<String, FREFunction> functionMap = new HashMap<String, FREFunction>();
		functionMap.put("getKeyboardY", new getKeyboardY() );
		functionMap.put("getKeyboardHeight", new getKeyboardHeight() );
		functionMap.put("initMe", new initFunction() );
		functionMap.put("setKeyboardAdjustNothing",new setKeyboardAdjustNothing() );
		
		return functionMap;
	}

}