package alluxio.bytedance.test;

import alluxio.AlluxioURI;
import alluxio.Configuration;
import alluxio.PropertyKey;
import alluxio.client.file.FileOutStream;
import alluxio.client.file.FileSystem;
import alluxio.exception.AlluxioException;
import alluxio.util.CommonUtils;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class AlluxioClientTest {

  private static final int NUMBERS = 20;

  public static void main(String[] args) throws IOException, AlluxioException {
    Configuration.set(PropertyKey.MASTER_HOSTNAME,"n11-162-220");
//    FileSystemContext.init();
    FileSystem fs = FileSystem.Factory.get();
    AlluxioURI path = new AlluxioURI("/myFile");
    if(fs.exists(path)){
      fs.delete(path);
    }
    //Create a file and get its output streamz
//    FileOutStream out = fs.createFile(path);
//    // Write data
//    String data = "abc";
//    byte[] buf = data.getBytes();
//    out.write(buf);
//    // Close and complete file
//    out.close();
//    //1.whether file exists
//    System.out.println(fs.exists(path));

    ByteBuffer buf = ByteBuffer.allocate(NUMBERS * 4);
    buf.order(ByteOrder.nativeOrder());
    for (int k = 0; k < NUMBERS; k++) {
      buf.putInt(k);
    }
    long startTimeMs = CommonUtils.getCurrentMs();
    FileOutStream os = fs.createFile(path);
    os.write(buf.array());
    os.close();

//
//    //2，文件信息状态
//

//    URIStatus status = fs.getStatus(path);
//    System.out.println(status.toString());
//
//    //3，文件是否在cache
//    System.out.println(status.getInAlluxioPercentage());
//    System.out.println(status.getInMemoryPercentage());

    //4，从hdfs加载某文件


//    AlluxioURI alluxioPath2 = new AlluxioURI("/myFile3");
//    fs.loadMetadata(alluxioPath2);



    //    fs.mount(alluxioPath2, hdfsPath2);
//    Map<String, MountPointInfo> mountMap = fs.getMountTable();
//    System.out.println(mountMap.size());
//    System.out.println(mountMap.entrySet().iterator().next().getValue());
    //5，从hdd加载到内存


    //6，从内存下放到hdd
    //7，从hdfs重新加载
    //8，读取文件
    //api

  }
}
