package com.share1024.netty.websocket;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.*;
import io.netty.handler.codec.http.websocketx.*;
import io.netty.util.CharsetUtil;

import java.nio.charset.Charset;
import java.util.Date;
import java.util.logging.Logger;

/**
 * Created by yesheng on 2017/3/1.
 */
public class WebSocketServerHandler  extends SimpleChannelInboundHandler<Object>{
    private static final Logger logger = Logger.getLogger(WebSocketServer.class.getName());

    private WebSocketServerHandshaker handshaker;
    @Override
    protected void channelRead0(ChannelHandlerContext ctx   , Object msg) throws Exception {
        if(msg instanceof FullHttpMessage){
            handleHttpRequest(ctx, (FullHttpRequest) msg);
        }else if(msg instanceof  WebSocketFrame){
            handleWebSocketFrame(ctx, (WebSocketFrame) msg);
        }
    }
    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        // 添加
        Global.group.add(ctx.channel());
        System.out.println("客户端与服务端连接开启");
    }
    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        // 移除
        Global.group.remove(ctx.channel());
        System.out.println("客户端与服务端连接关闭");
    }


    @Override
    public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
        ctx.flush();
    }

    private void handleHttpRequest (ChannelHandlerContext ctx, FullHttpRequest req){

        //http 解析异常
        if(!req.getDecoderResult().isSuccess()||(!"websocket".equals(req.headers().get("Upgrade")))){
            sendHttpResponse(ctx,req,new DefaultFullHttpResponse(HttpVersion.HTTP_1_1,HttpResponseStatus.BAD_REQUEST));
            return ;
        }

        WebSocketServerHandshakerFactory wsFactory = new WebSocketServerHandshakerFactory(
                "ws://localhost:8090/websocket",null,false
        );
        handshaker = wsFactory.newHandshaker(req);
        if( handshaker ==  null){
            WebSocketServerHandshakerFactory.sendUnsupportedVersionResponse(ctx.channel());
        }else{
            handshaker.handshake(ctx.channel(),req);
        }
    }

    private void handleWebSocketFrame(ChannelHandlerContext ctx, WebSocketFrame frame){

        if(frame instanceof CloseWebSocketFrame){
            handshaker.close(ctx.channel(), (CloseWebSocketFrame) frame.retain());
            return ;
        }
        if(frame instanceof PingWebSocketFrame){
            ctx.channel().write(new PongWebSocketFrame(frame.content().retain()));
            return;
        }
        if(!(frame instanceof  TextWebSocketFrame)){
            throw  new UnsupportedOperationException("=======wssasasas");
        }


        //返回响应信息
        String request = ((TextWebSocketFrame) frame).text();
        System.out.println("sssdsdd"+request);
        ctx.channel().write(new TextWebSocketFrame(request+",欢迎使用netty websocket,now:"+new Date()));
    }

    private void sendHttpResponse(ChannelHandlerContext ctx, FullHttpRequest req, FullHttpResponse resp){
        if(resp.getStatus().code() !=200){
            ByteBuf buf = Unpooled.copiedBuffer(resp.getStatus().toString(), CharsetUtil.UTF_8);
            resp.content().writeBytes(buf);
            buf.release();
        }
        ChannelFuture  cf = ctx.channel().writeAndFlush(resp);

        if(!isKeepAlive(req) || resp.getStatus().code() != 200){
            cf.addListener(ChannelFutureListener.CLOSE);
        }
    }

    private boolean isKeepAlive(FullHttpRequest req){
            return false;
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
            cause.printStackTrace();
            ctx.close();
    }
}
