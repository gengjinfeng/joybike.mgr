package com.joybike.server.api.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import com.joybike.server.api.model.Vehicle;

public class ReadExcelUtil {

	public static List<List<Vehicle>> readExcel(String filepath) throws Exception{
	    String fileType = filepath.substring(filepath.lastIndexOf(".") + 1, filepath.length());
	    InputStream is = null;
	    Workbook wb = null;
	    try {
	        is = new FileInputStream(filepath);
	         
	        if (fileType.equals("xls")) {
	            wb = new HSSFWorkbook(is);
	        } else if (fileType.equals("xlsx")) {
	            wb = new XSSFWorkbook(is);
	        } else {
	            throw new Exception("读取的不是excel文件");
	        }
	        List<List<Vehicle>> result = new ArrayList<List<Vehicle>>();
	        Sheet sheet = wb.getSheetAt(0);
            int rowSize = sheet.getLastRowNum();
            int listSize=300;//每次添加的条数
            int count;//添加的次数
            if(rowSize%listSize==0){
            	count=rowSize/listSize;
            } else {
            	count=rowSize/listSize+1;
            }
            int minSize;
            int maxSize;
            for (int i = 0; i < count; i++) {
            	minSize = i*listSize+1;
            	maxSize = i==count-1?rowSize:(i+1)*listSize;
	            List<Vehicle> vehicles = new ArrayList<Vehicle>();//对应excel文件 
	            for (int j = minSize; j <= maxSize; j++) {//遍历行,从第二行开始
	                Row row = sheet.getRow(j);
	                if (row == null) {//略过空行
	                    continue;
	                }
	                DecimalFormat df = new DecimalFormat("0");
	                Vehicle vehicle=new Vehicle();
	                vehicle.setVehicleId(row.getCell(0).toString());
	                vehicle.setLockId(Long.parseLong(df.format(row.getCell(1).getNumericCellValue())));
	                vehicle.setBundlingPhone(df.format(row.getCell(2).getNumericCellValue()));
	                vehicle.setAgentId(Integer.parseInt(df.format(row.getCell(3).getNumericCellValue())));
	                vehicle.setStatus(Integer.parseInt(df.format(row.getCell(4).getNumericCellValue())));
	                vehicle.setUseStatus(Integer.parseInt(df.format(row.getCell(5).getNumericCellValue())));
	                df=new DecimalFormat(".000000");
	                vehicle.setLastDimension(df.format(row.getCell(6).getNumericCellValue()));
	                vehicle.setLastLongitude(df.format(row.getCell(7).getNumericCellValue()));
	                vehicle.setRemark(row.getCell(8).toString());
	                vehicle.setCreateAt(UnixTimeUtils.now());
	                vehicles.add(vehicle);
		        }
	            result.add(vehicles);
			}
	        return result;
	    } catch (FileNotFoundException e) {
	        throw e;
	    } finally {
	        if (wb != null) {
	            wb.close();
	        }
	        if (is != null) {
	            is.close();
	        }
	    }
	}
}
