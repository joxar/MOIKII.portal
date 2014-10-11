package com.moikii.moikii.logic;

import java.io.*;
import com.moikii.moikii.constants.EnvConstants;
import com.moikii.moikii.constants.UtilConstants;

public class PrsrvData {
	
	static File file = null;
	static FileWriter fw = null;
	
	public PrsrvData() throws IOException {
		file = new File(EnvConstants.WDATA_FILIE);
		try {
			fw = new FileWriter(file, true);
		} catch (IOException e) {
			throw e;
		}
	}
	
	// main routine
	public void stockData(String[] dataArray) throws IOException {
		String tmpStr = "";

			// format given array to string
			tmpStr = csvFormatter(dataArray);
			// save the data to local file
			dataStocker(tmpStr);
			
	}
	
	// sub routines
	private static String csvFormatter(String[] inputArray) {
		
		String outputStr = "";
		
		for (int i=0; i<inputArray.length; i++) {
			outputStr += inputArray[i];
			if (i == inputArray.length-1) {
				outputStr += UtilConstants.DELIMITER_PIPE;
			} else {
				outputStr += UtilConstants.SEPARATER_COMMA;
			}
		}
		
		return outputStr;
	}
	
	private static boolean dataStocker(String inputStr) throws IOException {
		
		boolean success = false;
		
		try {
			fw.write(inputStr);
			fw.write(UtilConstants.ENTER);
			fw.close();
		} catch (IOException e) {
			throw e;
		}

		return success;
	}
	
}
