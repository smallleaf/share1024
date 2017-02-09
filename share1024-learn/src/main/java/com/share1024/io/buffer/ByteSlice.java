package com.share1024.io.buffer;

import java.nio.ByteBuffer;

import org.junit.Test;

/**
 * 缓冲区分片
 * @author small leaf
 * Date:   2017年2月7日 上午11:04:27
 */
public class ByteSlice {
	
	@Test
	public void test(){
		ByteBuffer buffer = ByteBuffer.allocate(10);
		
		for (int i = 0; i < buffer.capacity(); i++) {
			buffer.put((byte)i);
		}
		buffer.position(3);
		buffer.limit(7);
		ByteBuffer slice = buffer.slice();
		
		for(int i=0;i<slice.capacity();i++){
			byte b = slice.get(i);
			b*=10;
			slice.put(i,b);
		}
	   buffer.position( 0 );  
	   buffer.limit( buffer.capacity() );  
	      
	   while (buffer.remaining()>0) {  
	       System.out.println( buffer.get() );  
	   }  

	}
}
