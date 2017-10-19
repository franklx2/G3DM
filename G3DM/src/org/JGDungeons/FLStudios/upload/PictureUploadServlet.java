package org.JGDungeons.FLStudios.upload;
//Import required java libraries
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.JGDungeons.FLStudios.utils.UploadObjectMultipartUploadUsingHighLevelAPI;


@MultipartConfig
public class PictureUploadServlet extends HttpServlet{
	private Random rand = null;
	/**
	 * 
	 */
	private static final long serialVersionUID = 5553820946483241355L;
	private String message;

	public void init() throws ServletException
	{
		// Do required initialization
		message = "Hello World";
	}

	

	public void doPost(HttpServletRequest request,
			HttpServletResponse response)
					throws ServletException, IOException
	{
		
		
		String type = request.getParameter("type");
		
		if(type.equals("character"))
		{
			uploadCharacterAvatar(request, response);
		}
		else if(type.equals("user"))
		{
			uploadUserAvatar(request, response);
		}
		
		
	    
	}
	
	private void forward(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("forward");
		request.getRequestDispatcher("AvatarHandler.jsp").forward(request, response);
	}
	
	private void forwardCharacterAvatarHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("forward");
		request.getRequestDispatcher("CharacterAvatarHandler.jsp").forward(request, response);
	}
	
	private void forwardUserAvatarHandler(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("forward");
		request.getRequestDispatcher("UserAvatarHandler.jsp").forward(request, response);
	}
	
	private void uploadCharacterAvatar(HttpServletRequest request,
			HttpServletResponse response)
					throws ServletException, IOException
	{
		int bufferSize = response.getBufferSize();
		response.setBufferSize(20000);
		
		String characterId = request.getParameter("character-id");
		String url = "";
		
		
	    final Part filePart = request.getPart("avatar");
	    final String fileName = getFileName(filePart);
	    
		OutputStream output = null;
	    InputStream filecontent = null;
	    final PrintWriter writer = response.getWriter();
	    writer.println("buffer size: " + bufferSize);
	    writer.println(fileName);
	    
	    String rootPath = System.getProperty("catalina.home");
	    String path = rootPath + "/pics";
	    
	    
	    System.out.println("root path: " + rootPath);
	    try {
	        output = new FileOutputStream(new File(path + File.separator
	                + fileName));
	        
	        filecontent = filePart.getInputStream();

	        int read = 0;
	        final byte[] bytes = new byte[1024];
	        
	        /*
	         * Writes the file to specified location
	         */
	        while ((read = filecontent.read(bytes)) != -1) 
	        {
	            output.write(bytes, 0, read);
	        }
	        
	        String origin = path + File.separator + fileName;
	        System.out.println("file at: " + origin);
	        try {
				url = UploadObjectMultipartUploadUsingHighLevelAPI.pictureUpload(fileName, origin);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        writer.println("New file " + fileName + " created at " + path);
	        writer.println("accessible at: " + url);
	        writer.println("character id: " + characterId);
	    } catch (FileNotFoundException fne) {
	        writer.println("You either did not specify a file to upload or are "
	                + "trying to upload a file to a protected or nonexistent "
	                + "location.");
	        writer.println("<br/> ERROR: " + fne.getMessage());

		} finally {
	        if (output != null) {
	            output.close();
	        }
	        if (filecontent != null) {
	            filecontent.close();
	        }
	        
	    }
	    
	    int endBufferSize = response.getBufferSize();
	    writer.println("end buffer size: " + endBufferSize);
	    writer.println("is committed: " + response.isCommitted());
	    
	    
	   /*
	    * Store variables url and characterId into the request
	    */
	    request.setAttribute("url", url);
	    request.setAttribute("pc_id", characterId);
	    System.out.println("initiate forward");
	    forwardCharacterAvatarHandler(request, response);
	}

	private void uploadUserAvatar(HttpServletRequest request,
			HttpServletResponse response)
					throws ServletException, IOException
	{
		int bufferSize = response.getBufferSize();
		response.setBufferSize(20000);
		
		String username = request.getParameter("username");
		String url = "";
		
		
	    final Part filePart = request.getPart("avatar");
	    final String fileName = getFileName(filePart);
	    
		OutputStream output = null;
	    InputStream filecontent = null;
	    final PrintWriter writer = response.getWriter();
	    writer.println("buffer size: " + bufferSize);
	    writer.println(fileName);
	    
	    String rootPath = System.getProperty("catalina.home");
	    String path = rootPath + "/pics";
	    
	    
	    System.out.println("root path: " + rootPath);
	    try {
	        output = new FileOutputStream(new File(path + File.separator
	                + fileName));
	        
	        filecontent = filePart.getInputStream();

	        int read = 0;
	        final byte[] bytes = new byte[1024];
	        
	        /*
	         * Writes the file to specified location
	         */
	        while ((read = filecontent.read(bytes)) != -1) 
	        {
	            output.write(bytes, 0, read);
	        }
	        
	        String origin = path + File.separator + fileName;
	        System.out.println("file at: " + origin);
	        try {
				url = UploadObjectMultipartUploadUsingHighLevelAPI.pictureUpload(fileName, origin);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        writer.println("New file " + fileName + " created at " + path);
	        writer.println("accessible at: " + url);
	        writer.println("username: " + username);
	    } catch (FileNotFoundException fne) {
	        writer.println("You either did not specify a file to upload or are "
	                + "trying to upload a file to a protected or nonexistent "
	                + "location.");
	        writer.println("<br/> ERROR: " + fne.getMessage());

		} finally {
	        if (output != null) {
	            output.close();
	        }
	        if (filecontent != null) {
	            filecontent.close();
	        }
	        
	    }
	    
	    int endBufferSize = response.getBufferSize();
	    writer.println("end buffer size: " + endBufferSize);
	    writer.println("is committed: " + response.isCommitted());
	    
	    
	   /*
	    * Store variables url and characterId into the request
	    */
	    request.setAttribute("url", url);
	    request.setAttribute("username", username);
	    System.out.println("initiate forward");
	    forwardUserAvatarHandler(request, response);
	}
	
	private String getFileName(final Part part) {
	    final String partHeader = part.getHeader("content-disposition");
	    for (String content : part.getHeader("content-disposition").split(";")) {
	        if (content.trim().startsWith("filename")) {
	           content = content.substring(
	                    content.indexOf('=') + 1).trim().replace("\"", "");
	           content = content.substring(content.lastIndexOf("\\") + 1, content.length());
	           System.out.println("test2");
	           return content;
	        }
	    }
	    return null;
	}
	
	
	


	
	public void destroy()
	{
		// do nothing.
	}

}
