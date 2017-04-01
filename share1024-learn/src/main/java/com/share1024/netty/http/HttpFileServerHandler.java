package com.share1024.netty.http;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.FullHttpRequest;

/**
 * Created by yesheng on 2017/2/28.
 */
public class HttpFileServerHandler extends SimpleChannelInboundHandler<FullHttpRequest>{
    @Override
    protected void channelRead0(ChannelHandlerContext channelHandlerContext, FullHttpRequest fullHttpRequest) throws Exception {


    }
}
