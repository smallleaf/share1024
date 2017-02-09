package com.share1024.io.buffer;

import java.nio.IntBuffer;

import org.junit.Test;

public class IntBufferTest {
	
	@Test
	public void test(){
		IntBuffer intBuffer = IntBuffer.allocate(8);
		for (int i = 0; i < intBuffer.capacity(); i++) {
			int j = 2*(i+1);
			intBuffer.put(j);
		}
		intBuffer.flip();
		while (intBuffer.hasRemaining()) {
			System.out.println(intBuffer.get());
		}
	}
}
