---
title: "留言板"
date: 2021-05-10T01:01:01+01:01
description: 📢有什么想说的吗？快来留言发表你的看法吧~ 
draft: false
#true 为隐藏文章 false展示
image: https://cn-north-1-image.s3.cn-north-1.amazonaws.com.cn/cnsre/logo/comment.png
---

<div style="width: 100%; margin: 0 auto; background-color: #f0f0f0;">
  <p style="text-align: left; font-size: 2em;">&nbsp&nbsp留言板</p>
  <p style="text-align: right;">📢快来留言发表你的看法吧~&nbsp&nbsp</p>
</div>
<script>
    var colors = ["#f44336", "#e91e63", "#9c27b0", "#673ab7", "#3f51b5", "#2196f3", "#03a9f4", "#00bcd4", "#009688", "#4caf50", "#8bc34a", "#cddc39", "#ffeb3b", "#ffc107", "#ff9800", "#ff5722", "#795548", "#9e9e9e", "#607d8b"];
    function randomizeColors() {
      var divs = document.getElementsByTagName("div");
      for (var i = 0; i < divs.length; i++) {
        if (divs[i].style.width === "80%") {
          divs[i].style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
        }
      }
    }
    window.onload = randomizeColors;
  </script>

