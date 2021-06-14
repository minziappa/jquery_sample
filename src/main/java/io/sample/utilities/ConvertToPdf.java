package io.sample.utilities;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.nio.charset.Charset;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorker;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.itextpdf.tool.xml.css.CssFile;
import com.itextpdf.tool.xml.css.StyleAttrCSSResolver;
import com.itextpdf.tool.xml.html.CssAppliers;
import com.itextpdf.tool.xml.html.CssAppliersImpl;
import com.itextpdf.tool.xml.html.Tags;
import com.itextpdf.tool.xml.parser.XMLParser;
import com.itextpdf.tool.xml.pipeline.css.CSSResolver;
import com.itextpdf.tool.xml.pipeline.css.CssResolverPipeline;
import com.itextpdf.tool.xml.pipeline.end.PdfWriterPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipelineContext;

public class ConvertToPdf {

    public static MultipartFile createPdf(String filename, String htmlStr, HttpServletRequest request) throws DocumentException, IOException {
        
        String storePathString = "/home/pdfFiles/";

        //서버 내 파일 주소
        String serverPath = request.getSession().getServletContext().getRealPath("/") + "WEB-INF/jsp/";

        File saveFolder = new File(storePathString);

        //경로가 없으면 생성한다.
        if (!saveFolder.exists() || saveFolder.isFile()) {
            saveFolder.mkdirs();
        }
        
        //용지 설정이 가능하다. 생략해도 무관
        // Document document = new Document(PageSize.A4, 50, 50, 50, 50); 
        Document document = new Document();
        
        //파일 확장자는 pdf
        filename += ".pdf";
        String realName = storePathString;
        
        realName += filename;
        File pdfFile = new File(realName);

        //파일이 있으면 삭제(같은 이름으로 만들 때마다 새로 쓰기 위해서)
        if (pdfFile.isFile()) {
        	pdfFile.delete();
        }

        //pdf를 만들기 시작한다.
        PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(realName));      
        
        document.open();

        //이미지 태그 절대경로 사용해야 한다.(반드시)        
        htmlStr = htmlStr.replaceAll("src=\"/", "src=\"http://127.0.0.1:8080/");
        //폰트를 설정한다. 폰트 설정 누락시 한글이 안보이는 경우 발생
        htmlStr = "<html><body style='font-family: MalgunGothic;'>" + htmlStr + "</body></html>";
        
        XMLWorkerHelper helper = XMLWorkerHelper.getInstance();
        
        //css파일
        CSSResolver cssResolver = new StyleAttrCSSResolver();
        CssFile cssFile = XMLWorkerHelper.getCSS(new FileInputStream(serverPath+"table.css"));
        cssResolver.addCss(cssFile);
        
        XMLWorkerFontProvider fontProvider = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
        
        //매우매우 중요!! 
        //반드시 해당 폰트가 경로내에 있어야한다. 
        //(폰트 존재하지 않을 시 pdf 생성 후 열리지 않는 에러 발생)
        fontProvider.register(serverPath + "malgun.ttf", "MalgunGothic"); //MalgunGothic은 font-family용 alias
        CssAppliers cssAppliers = new CssAppliersImpl(fontProvider);
            
        HtmlPipelineContext htmlContext = new HtmlPipelineContext(cssAppliers);
        htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());
            
        // html을 pdf로 변환시작
        PdfWriterPipeline pdf = new PdfWriterPipeline(document, writer);
        HtmlPipeline html = new HtmlPipeline(htmlContext, pdf);
        CssResolverPipeline css = new CssResolverPipeline(cssResolver, html);
            
        XMLWorker worker = new XMLWorker(css, true);
        //캐릭터 셋 설정
        XMLParser xmlParser = new XMLParser(worker, Charset.forName("UTF-8"));
        
        StringReader strReader = new StringReader(htmlStr);
        xmlParser.parse(strReader);
        
        document.close();
        writer.close();

        return null;        
    }

}
