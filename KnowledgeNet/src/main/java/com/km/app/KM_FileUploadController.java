package com.km.app;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.km.config.DocumentSettings;

@Controller
@RequestMapping("/fileupload")
public class KM_FileUploadController {
	
	@Autowired  
	DocumentSettings documentSettings; 
	
	@RequestMapping(value = "/", method = { RequestMethod.GET, RequestMethod.POST })
	public String init(HttpServletRequest request, Model model) {
		return fileuploadInit(request, model);
	}
	
	@RequestMapping(value = "/init")
	public String fileuploadInit(HttpServletRequest request, Model model) {
		
		String queryId = UUID.randomUUID().toString().replace("-", StringUtils.EMPTY);
		long rt = System.currentTimeMillis();
		model.addAttribute("queryId", queryId);
		model.addAttribute("requestedTime", rt);
		
		return "file/fileupload";
	}
	
	@ResponseBody
	@RequestMapping(value = "/register")
	public String fileuploadRegister(@RequestParam("fileupload") MultipartFile file, 
			HttpServletRequest request, Model model) throws InvalidKeyException, URISyntaxException, IOException {
//		String uploadDirectory =  SystemConfig.SMTP_VISIT_FILELOAD_PATH.getValue();
		String resultFlg = "";
		String uploadDirectory = "/home/shield/fessfile";
    	if(file != null && !file.isEmpty()) {
    		try {
    			File logoFile = new File(uploadDirectory);
    			if(!logoFile.exists()){  
    				logoFile.mkdirs();
    	        }
    			String filePath = uploadDirectory + File.separator + file.getOriginalFilename();
    			File targetFile = new File(filePath);
    			file.transferTo(targetFile);
    			resultFlg = "1";
			} catch (IOException e) {
				e.printStackTrace();
				throw e;
			}
    	} else {
    		resultFlg = "0";
    	}
    	return resultFlg;
	}
	
	@ResponseBody
	@RequestMapping(value = "/singleFileUpload", method = RequestMethod.POST)
	public Map<String, Object> singleFileUpload(@RequestParam(value = "singleFile", required = false) MultipartFile singleFile,
			HttpServletRequest request, Model model, HttpSession session) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		int error;
		String message;
		String url = null;
		String id = null;
		String fileName = "";
		try {
			String fileid = null;
			// 验证大小
			String maxLength = documentSettings.getMaxuploadlength();
			if (singleFile.getSize() > Integer.valueOf(maxLength)) {
				throw new Exception("The file size " + String.valueOf(singleFile.getSize()) +"exceeds the maximum " + Integer.valueOf(maxLength) / 1024 / 1024 + "MB");
			}
			CommonsMultipartFile cmFile = (CommonsMultipartFile) singleFile;
			DiskFileItem item = (DiskFileItem) cmFile.getFileItem();
			{// 小于8k不生成到临时文件，临时解决办法。zhanghc20150919
				if (!item.getStoreLocation().exists()) {
					item.write(item.getStoreLocation());
				}
			}

			fileName = URLEncoder.encode(item.getName(), "utf-8");
//			fileid = farmFileManagerImpl.saveFile(item.getStoreLocation(), FILE_TYPE.HTML_INNER_IMG,
//					file.getOriginalFilename(), getCurrentUser(session));
//			error = 0;
//			url = farmFileManagerImpl.getFileURL(fileid);
			message = "";
			id = fileid;
		} catch (Exception e) {
			//e.printStackTrace();
			error = 1;
			message = e.getMessage();
		}
		
//		return ViewMode.getInstance().putAttr("error", error).putAttr("url", url).putAttr("message", message)
//				.putAttr("id", id).putAttr("fileName", fileName).returnObjMode();
		return resultMap;
	}
	
}
