package com.share1024.apache.poi;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFHeader;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Header;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.Test;

/**
 * POI 操作Excel
 * @author small leaf
 * Date:   2017年1月4日 下午5:53:55
 */
public class HSSFWorkbookLearn {
	
	public static void main(String[] args) throws Exception {
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook();
		HSSFSheet hssfSheet = hssfWorkbook.createSheet();
		HSSFCell hssfCell = null;
		HSSFRow hssfRow = null;
		HSSFCellStyle hssfCellStyle = hssfWorkbook.createCellStyle();
		HSSFCellStyle hssfCellStyle2 = hssfWorkbook.createCellStyle();
		HSSFDataFormat hssfDataFormat = hssfWorkbook.createDataFormat();
		
		HSSFFont hssfFont = hssfWorkbook.createFont();
		HSSFFont hssfFont2 = hssfWorkbook.createFont();
		
		hssfFont.setFontHeightInPoints((short)12);
		hssfFont.setColor(HSSFColor.RED.index);
		hssfFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		
		hssfFont2.setFontHeightInPoints((short)10);
		hssfFont2.setColor(HSSFColor.BLACK.index);
		hssfFont2.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		
		hssfCellStyle.setFont(hssfFont);
		hssfCellStyle.setDataFormat(hssfDataFormat.getFormat("#,##0.0"));
		
		hssfCellStyle2.setBorderBottom(hssfCellStyle2.BORDER_THIN);
		hssfCellStyle2.setDataFormat(HSSFDataFormat.getBuiltinFormat("text"));
		hssfCellStyle2.setFont(hssfFont2);
		
		for(short rownum = (short)0; rownum < 30; rownum++) {
			HSSFRow r = hssfSheet.createRow(rownum);
			for(short cellnum = (short)0; cellnum < 10; cellnum += 2) {
				HSSFCell c = r.createCell(cellnum);
				HSSFCell c2 = r.createCell(cellnum+1);

				c.setCellValue((double)rownum + (cellnum/10));
				c2.setCellValue(new HSSFRichTextString("Hello! " + cellnum));
			}
		}

		// Save
		FileOutputStream out = new FileOutputStream("d:workbook.xls");
		hssfWorkbook.write(out);
		out.close();
	}
	
	@Test
	public void hSSFWorkbookOld() throws IOException{
		HSSFWorkbook hssfWorkbook = new HSSFWorkbook();
		HSSFSheet hssfSheet = hssfWorkbook.createSheet();
		HSSFCell hssfCell = null;
		HSSFRow hssfRow = null;
		HSSFCellStyle hssfCellStyle = hssfWorkbook.createCellStyle();
		HSSFCellStyle hssfCellStyle2 = hssfWorkbook.createCellStyle();
		HSSFDataFormat hssfDataFormat = hssfWorkbook.createDataFormat();
		
		HSSFFont hssfFont = hssfWorkbook.createFont();
		HSSFFont hssfFont2 = hssfWorkbook.createFont();
		
		hssfFont.setFontHeightInPoints((short)12);
		hssfFont.setColor(HSSFColor.RED.index);
		hssfFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		
		hssfFont2.setFontHeightInPoints((short)10);
		hssfFont2.setColor(HSSFColor.BLACK.index);
		hssfFont2.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
		
		hssfCellStyle.setFont(hssfFont);
		hssfCellStyle.setDataFormat(hssfDataFormat.getFormat("#,##0.0"));
		
		hssfCellStyle2.setBorderBottom(hssfCellStyle2.BORDER_THIN);
		hssfCellStyle2.setDataFormat(HSSFDataFormat.getBuiltinFormat("text"));
		hssfCellStyle2.setFont(hssfFont2);
		
		for(short rownum = (short)0; rownum < 30; rownum++) {
			HSSFRow r = hssfSheet.createRow(rownum);
			for(short cellnum = (short)0; cellnum < 10; cellnum += 2) {
				HSSFCell c = r.createCell(cellnum);
				HSSFCell c2 = r.createCell(cellnum+1);

				c.setCellValue((double)rownum + (cellnum/10));
				c2.setCellValue(new HSSFRichTextString("Hello! " + cellnum));
			}
		}
		// Save
		FileOutputStream out = new FileOutputStream("d:workbook.xls");
		hssfWorkbook.write(out);
		out.close();
	}
	@Test
	public void hSSFWorkbookNew() throws Exception{
		Workbook[] wbs = new Workbook[] { new HSSFWorkbook(), new XSSFWorkbook() };
		for(int i=0; i<wbs.length; i++) {
		   Workbook wb = wbs[i];
		   CreationHelper createHelper = wb.getCreationHelper();

		   // create a new sheet
		   Sheet s = wb.createSheet();
		   // declare a row object reference
		   Row r = null;
		   // declare a cell object reference
		   Cell c = null;
		   // create 2 cell styles
		   CellStyle cs = wb.createCellStyle();
		   CellStyle cs2 = wb.createCellStyle();
		   DataFormat df = wb.createDataFormat();

		   // create 2 fonts objects
		   Font f = wb.createFont();
		   Font f2 = wb.createFont();

		   // Set font 1 to 12 point type, blue and bold
		   f.setFontHeightInPoints((short) 12);
		   f.setColor( IndexedColors.RED.getIndex() );
		   f.setBoldweight(Font.BOLDWEIGHT_BOLD);

		   // Set font 2 to 10 point type, red and bold
		   f2.setFontHeightInPoints((short) 10);
		   f2.setColor( IndexedColors.RED.getIndex() );
		   f2.setBoldweight(Font.BOLDWEIGHT_BOLD);

		   // Set cell style and formatting
		   cs.setFont(f);
		   cs.setDataFormat(df.getFormat("#,##0.0"));

		   // Set the other cell style and formatting
		   cs2.setBorderBottom(cs2.BORDER_THIN);
		   cs2.setDataFormat(df.getFormat("text"));
		   cs2.setFont(f2);


		   // Define a few rows
		   for(int rownum = 0; rownum < 30; rownum++) {
			   Row r2 = s.createRow(rownum);
			   for(int cellnum = 0; cellnum < 10; cellnum += 2) {
				   Cell c1 = r2.createCell(cellnum);
				   Cell c2 = r2.createCell(cellnum+1);
		   
				   c1.setCellValue((double)rownum + (cellnum/10));
				   c2.setCellValue(
				         createHelper.createRichTextString("Hello! " + cellnum)
				   );
			   }
		   }
		   
		   // Save
		   String filename = "d:workbooknew.xls";
		   if(wb instanceof XSSFWorkbook) {
		     filename = filename + "x";
		   }
		 
		   FileOutputStream out = new FileOutputStream(filename);
		   wb.write(out);
		   out.close();
		}
	}
	
	/**
	 * 创建一个新的Excel
	 * @throws IOException 
	 */
	@Test
	public void newWorkBook() throws IOException{
		//后缀为.xls
		Workbook workbook = new HSSFWorkbook();
		FileOutputStream outputStream = new FileOutputStream("d:test.xls");
		workbook.write(outputStream);
		workbook.close();
		//后缀为.xlsx
		Workbook workbook2 = new XSSFWorkbook();
		FileOutputStream outputStream2 = new FileOutputStream("d:test.xlsx");
		workbook2.write(outputStream2);
		workbook2.close();
	}
	
	@Test
	public void createCell() throws IOException{
		Workbook wb = new HSSFWorkbook();
	    //Workbook wb = new XSSFWorkbook();
	    CreationHelper createHelper = wb.getCreationHelper();
	    Sheet sheet = wb.createSheet("new sheet");

	    // Create a row and put some cells in it. Rows are 0 based.
	    //创建新行 
	    Row row = sheet.createRow((short)0);
	    // Create a cell and put a value in it.
	    Cell cell = row.createCell(0);
	    cell.setCellValue(1);

	    // Or do it on one line.
	    row.createCell(1).setCellValue(1.2);
	    row.createCell(2).setCellValue(
	         createHelper.createRichTextString("This is a string"));
	    row.createCell(3).setCellValue(true);

	    // Write the output to a file
	    FileOutputStream fileOut = new FileOutputStream("d:ceshi.xls");
	    wb.write(fileOut);
	    fileOut.close();
	}
	@Test
	public void alignMent() throws IOException{
		Workbook wb = new XSSFWorkbook(); //or new HSSFWorkbook();

        Sheet sheet = wb.createSheet();
        Row row = sheet.createRow((short) 2);
        row.setHeightInPoints(30);

        createCell(wb, row, (short) 0, CellStyle.ALIGN_CENTER, CellStyle.VERTICAL_BOTTOM);
        createCell(wb, row, (short) 1, CellStyle.ALIGN_CENTER_SELECTION, CellStyle.VERTICAL_BOTTOM);
        createCell(wb, row, (short) 2, CellStyle.ALIGN_FILL, CellStyle.VERTICAL_CENTER);
        createCell(wb, row, (short) 3, CellStyle.ALIGN_GENERAL, CellStyle.VERTICAL_CENTER);
        createCell(wb, row, (short) 4, CellStyle.ALIGN_JUSTIFY, CellStyle.VERTICAL_JUSTIFY);
        createCell(wb, row, (short) 5, CellStyle.ALIGN_LEFT, CellStyle.VERTICAL_TOP);
        createCell(wb, row, (short) 6, CellStyle.ALIGN_RIGHT, CellStyle.VERTICAL_TOP);

        // Write the output to a file
        FileOutputStream fileOut = new FileOutputStream("d:xssf-align.xlsx");
        wb.write(fileOut);
        fileOut.close();
	}
	/**
     * Creates a cell and aligns it a certain way.
     *
     * @param wb     the workbook
     * @param row    the row to create the cell in
     * @param column the column number to create the cell in
     * @param halign the horizontal alignment for the cell.
     */
    private  void createCell(Workbook wb, Row row, short column, short halign, short valign) {
        Cell cell = row.createCell(column);
        cell.setCellValue("Align It");
        CellStyle cellStyle = wb.createCellStyle();
        cellStyle.setAlignment(halign);
        cellStyle.setVerticalAlignment(valign);
        cell.setCellStyle(cellStyle);
    }
    
    /***
     * 用poi 创建一个Excel 
     * 需求
     * 1.10列 50行
     * 2.第一行合并单元格 占两行 10列  居中
     * 3.第三四行 1,2列合并单元格 
     * @throws Exception 
     */
    @Test
    public void test() throws Exception{
    	Workbook workbook = new HSSFWorkbook();
    	Sheet sheet = workbook.createSheet();
    	Row row = sheet.createRow((short)0);
    	Cell cell = row.createCell((short)0);
    	cell.setCellValue("你是一个大傻逼");
    	
    	CellStyle cellStyle = workbook.createCellStyle();
    	cellStyle.setAlignment(CellStyle.ALIGN_CENTER);
    	cellStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);
    	cell.setCellStyle(cellStyle);
    	sheet.addMergedRegion(new CellRangeAddress(0, 1, 0, 9));
    	FileOutputStream outputStream = new FileOutputStream("d:test.xls");
		workbook.write(outputStream);
		workbook.close();
    	
    }
}
