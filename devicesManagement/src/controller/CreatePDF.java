package controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
 
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import entities.Devices;
 
public class CreatePDF {
	
//	private static Font TIME_ROMAN = new Font(Font.FontFamily.TIMES_ROMAN, 18,Font.BOLD);
	private static Font TIME_ROMAN_SMALL = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);
	
	/**
	 * @param args
	 */
	public static Document createPDF(String file, String usernameMain, String usernamesub, Devices device) {
 
		Document document = null;
 
		try {
			document = new Document(PageSize.A5);
			PdfWriter.getInstance(document, new FileOutputStream(file));
			document.open();
 
			addMetaData(document,usernameMain);
 
			addTitlePage(document);
 
			createTable(document,usernameMain,usernamesub,device);
 
			document.close();
 
		} catch (FileNotFoundException e) {
 
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		return document;
 
	}
 
	private static void addMetaData(Document document,String usernameMain) {
		document.addTitle("Assign Device");
		document.addSubject("Assign Device");
		document.addAuthor(usernameMain);
		document.addCreator(usernameMain);
	}
 
	private static void addTitlePage(Document document)
			throws DocumentException {
 
		Paragraph preface = new Paragraph();
		creteEmptyLine(preface, 1);
 
		creteEmptyLine(preface, 1);
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
		preface.add(new Paragraph("Report created on "
				+ simpleDateFormat.format(new Date()), TIME_ROMAN_SMALL));
		document.add(preface);
 
	} 
 
	private static void creteEmptyLine(Paragraph paragraph, int number) {
		for (int i = 0; i < number; i++) {
			paragraph.add(new Paragraph(" "));
		}
	}
 
	private static void createTable(Document document,String usernameMain, String usernamesub, Devices device) throws DocumentException {
		Paragraph paragraph = new Paragraph();
		creteEmptyLine(paragraph, 2);
		document.add(paragraph);
		float[] widths = {0.15f, 0.15f, 0.5f, 0.2f};
	      PdfPTable table = new PdfPTable(widths);
		
		//PdfPTable table = new PdfPTable(4);
 
		PdfPCell c1 = new PdfPCell(new Phrase("Sender"));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);
 
		c1 = new PdfPCell(new Phrase("Receiver"));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);
 
		c1 = new PdfPCell(new Phrase("Device"));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);
		
		c1 = new PdfPCell(new Phrase("Time"));
		c1.setHorizontalAlignment(Element.ALIGN_CENTER);
		table.addCell(c1);
		
		table.setHeaderRows(1);
 
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		
		// 1 row, if more row use for - Ahihi 
		
		table.setWidthPercentage(100);
		table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
		table.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
		table.addCell(usernameMain);
		table.addCell(usernamesub);
		table.addCell(device.toString());
		table.addCell(simpleDateFormat.format(new Date()));
 
		document.add(table);
	}
 
}
