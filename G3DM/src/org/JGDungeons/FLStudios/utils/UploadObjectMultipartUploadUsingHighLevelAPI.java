package org.JGDungeons.FLStudios.utils;
import java.io.File;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.transfer.TransferManager;
import com.amazonaws.services.s3.transfer.Upload;

public class UploadObjectMultipartUploadUsingHighLevelAPI {

    
    
    public static String pictureUpload(String pkeyName, String pfilePath) throws InterruptedException
	{ 
    	System.out.println("inside pictureUpload");
        String existingBucketName = "flstudios/pics";
        String keyName            = pkeyName;
        String filePath           = pfilePath;  
        String url = "https://s3.amazonaws.com/flstudios/pics/" + keyName;
        TransferManager tm = new TransferManager(new ProfileCredentialsProvider());        
        System.out.println("Hello");
        
        AmazonS3 s3 = new AmazonS3Client();
        if(isValidFile(s3, existingBucketName, keyName) == true )
        {
        	System.out.println(keyName + " Exists");
        }
        else
        {
        	System.out.println(keyName + " Does not exist");
        }
        
        
        // TransferManager processes all transfers asynchronously, 
        // so this call will return immediately.
        Upload upload = tm.upload(
        		existingBucketName, keyName, new File(filePath));
        System.out.println("Hello2");

        try {
        	// Or you can block and wait for the upload to finish
        	upload.waitForCompletion();
        	System.out.println("Upload complete.");
        	System.out.println(url);
        } catch (AmazonClientException amazonClientException) {
        	System.out.println("Unable to upload file, upload was aborted.");
        	amazonClientException.printStackTrace();
        }
        
       return url;
    }
    
    public static boolean isValidFile(AmazonS3 s3,
            String bucketName,
            String path) throws AmazonClientException, AmazonServiceException {
        boolean isValidFile = true;
        try {
            ObjectMetadata objectMetadata = s3.getObjectMetadata(bucketName, path);
        } catch (AmazonS3Exception s3e) {
            if (s3e.getStatusCode() == 404) {
            // i.e. 404: NoSulchKey - The specified key does not exist
                isValidFile = false;
            }
            else {
                throw s3e;    // rethrow all S3 exceptions other than 404   
            }
        }

        return isValidFile;
    }
}