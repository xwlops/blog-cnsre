+++
title = "ChatGPT"
description = "ChatGPT"
type = "about"
date = "2020-03-02"
+++

<!-- <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Card with Embedded Content</title>
  <style>
    .card-wrapper {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background-color: #f5f5f5;
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    .card-wrapper .card-container {
      width: 90%;
      max-width: 1200px;
      background: #ffffff;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }

    .card-wrapper .card-header {
      color: #ffffff;
      padding: 20px;
      text-align: center;
    }

    .card-wrapper .card-main {
      padding: 0px;
    }

    .card-wrapper .embed-container {
      width: 100%;
      max-width: 1200px;
      height: 800px;
      border: 1px solid #ddd;
      border-radius: 5px;
      overflow: hidden;
    }

    .card-wrapper iframe {
      width: 100%;
      height: 100%;
      border: none;
    }
  </style>
</head>
<body>
  <div class="card-wrapper">
    <div class="card-container">
      <div class="card-header">
        <h1>嵌入站点示例</h1>
      </div>
      <div class="card-main">
        <div class="embed-container">
          <iframe 
            src="https://ai.cnsre.cn?viewport=1024x768" 
            sandbox="allow-scripts allow-same-origin"
            referrerpolicy="no-referrer">
            您的浏览器不支持 iframe，请升级。
          </iframe>
        </div>
      </div>
    </div>
  </div>
</body>
</html> -->

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Card with Embedded Content</title>
  <style>
    /* 定义命名空间，避免样式冲突 */
    .card-container {
      all: unset;
      margin: 0 auto;
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      display: flex;
      flex-direction: column;
      align-items: center;
      width: 100%;
      max-width: 1000px;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    }

    .card-header {
      background: #FAFAFA;
      color: #333;
      padding: 20px;
      text-align: center;
    }

    .card-header h1 {
      margin: 0;
      font-size: 24px;
    }

    .card-main {
      width: 100%;
    }

    .embed-container {
      width: 100%;
      height: 800px;
      border: 1px solid #ddd;
      border-radius: 5px;
      overflow: hidden;
    }

    iframe {
      width: 100%;
      height: 100%;
      border: none;
    }
  </style>
</head>
<body>
  <div class="card-container">
    <div class="card-header">
      <!-- <h1>嵌入页面示例</h1> -->
    </div>
    <div class="card-main">
      <div class="embed-container">
        <iframe 
          src="https://ai.cnsre.cn" 
          sandbox="allow-scripts allow-same-origin allow-popups"
          referrerpolicy="no-referrer-when-downgrade">
        </iframe>
      </div>
    </div>
  </div>
</body>
</html>