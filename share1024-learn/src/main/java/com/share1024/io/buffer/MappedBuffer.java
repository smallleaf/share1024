package com.share1024.io.buffer;

import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

import org.junit.Test;

/**
 * 内存映射文件I/O
 * @author small leaf
 * Date:   2017年2月7日 上午11:11:30
 */
public class MappedBuffer {
	
	@Test
	public void test() throws Exception{
		RandomAccessFile randomAccessFile = new RandomAccessFile("e:\\test.txt", "rw");
		
		FileChannel fileChannel = randomAccessFile.getChannel();
		
		MappedByteBuffer mbb = fileChannel.map(FileChannel.MapMode.READ_WRITE, 0, 1024);
		
		mbb.put(0, (byte)97);
		mbb.put(1023, (byte)1023);
		randomAccessFile.close();
	}
}
