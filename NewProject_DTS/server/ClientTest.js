const WebSocket = require('ws');

// 创建一个WebSocket客户端
const socket = new WebSocket('ws://localhost:9016');

// 当WebSocket连接打开时触发
socket.on('open', function open() {
  // console.log('连接已打开。');
  // let encoder = new TextEncoder();
  // let view = encoder.encode('abcd');

  // let buffer = view.buffer;
  // console.log(buffer);
  // // 发送一条消息到服务器
  // socket.send('Hello, Server!');
});

// 当接收到服务器消息时触发
socket.on('message', function incoming(data) {
  
  console.log('收到服务器消息: %s', data);
});

// 当连接关闭时触发
socket.on('close', function close() {
  console.log('连接已关闭。');
});

// 处理错误
socket.on('error', function error(err) {
  console.error('发生错误: %o', err);
});