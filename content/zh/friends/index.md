+++
title = "友情链接"
type = "about"
date = "2021-1-1 11:55:59"
keywords = "CNSRE运维博客,CNSRE运维博客友情链接"
+++
### 友链申请说明
- 本站属于网络资源分享、技术交流站点，欢迎站长们申请友链添加！
- 友链申请优先于技术分享类博客站点友链。
- 申请链接前请先添加本博链接。
- 不定时进行回访友链。
- 如遇到长时间无响应或涉及违规内容将终止友链，熟不另行通知!
- 申请友链，请在本站 **[留言板](https://www.cnsre.cn/comment/)** 中留言内容格式如下：

{{< alert theme="success" dir="ltr" >}} 
网站名称：SRE运维博客
网站地址：www.cnsre.cn
网站说明：专注SRE运维技术分享的博客
网站Logo：https://www.cnsre.cn/favicon.ico
{{< /alert >}}
<br />

### 友情链接
<div class="main-container">
    <div id="friend-links-container" class="friends-container"></div>
</div>

<style>
    .main-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        background-color: #f7f7f7;
        padding: 20px;
    }

    .friends-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .custom-friends-container {
        width: 33.33%;
        display: flex;
        justify-content: center;
        padding: 10px;
    }

    .card {
        width: 280px;
        border: 1px solid #e0e0e0;
        border-radius: 8px;
        background-color: #ffffff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease;
        display: flex;
        flex-direction: column;
    }

    .card:hover {
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    .custom-friends-img {
        max-width: 100%;
        max-height: 150px;
        border-top-left-radius: 8px;
        border-top-right-radius: 8px;
    }

    .custom-friends-info {
        height: 80px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        text-align: center;
        border-radius: 10px;
        margin-top: auto;
        transition: background-color 0.3s;
    }

    .custom-friends-title a {
        text-decoration: none;
        color: #333333;
        font-weight: bold;
    }

    .custom-friends-description {
        color: #666666;
        margin-top: 5px;
        font-size: 14px;
    }
</style>

<script>
    var colors = ["#2bae85", "#83cbac", "#6fa3ef", "#bc99c4", "#46c47c", "#f9bb3c", "#e8583d", "#f68e5f", "#009688", "#4caf50", "#8bc34a", "#cddc39", "#ffeb3b", "#ffc107", "#ff9800", "#ff5722", "#9e9e9e"];

    function randomizeColors() {
        var cards = document.querySelectorAll(".custom-friends-info");
        cards.forEach(function (card) {
            var randomColor = colors[Math.floor(Math.random() * colors.length)];
            card.style.backgroundColor = randomColor;
        });
    }

    window.onload = randomizeColors;

    function addFriendLink(imageUrl, siteUrl, siteName, description) {
        var container = document.getElementById('friend-links-container');
        var newLink = document.createElement('div');
        newLink.classList.add('custom-friends-container');

        newLink.innerHTML = `
            <div class="card">
                <a href="${siteUrl}">
                    <img class="custom-friends-img" src="${imageUrl}" alt="${siteName}" onclick="location.href='${siteUrl}'">
                </a>
                <div class="custom-friends-info">
                    <h5 class="custom-friends-title">
                        <a href="${siteUrl}">${siteName}</a>
                    </h5>
                    <p class="custom-friends-description">${description}</p>
                </div>
            </div>
        `;

        container.appendChild(newLink);
        randomizeColors();
    }

    // 添加新的友链
    // addFriendLink('图片地址', '网址', '网站名称', '描述');
    addFriendLink('https://files.catbox.moe/ois151.png', 'https://www.iots.vip/', 'Alliot’s blog', '');
    addFriendLink('https://cn-north-1-image.s3.cn-north-1.amazonaws.com.cn/cnsre/cnsre/20240312bfb64c122f053f82b980fbc854b4d1fd.jpg', 'https://srebro.cn/', '运维小弟', '');
    addFriendLink('https://cn-north-1-image.s3.cn-north-1.amazonaws.com.cn/cnsre/cnsre/202403121affd94458ab5aad8b2efc7767171c75.jpg', 'https://www.xiaoz.me/', '小z博客', '');
    addFriendLink('https://www.yangxingzhen.com/images/site_logo.jpg', 'https://www.yangxingzhen.com/', '小柒博客', '');
    // addFriendLink('https://www.iirwt.com/wp-content/uploads/2018/04/cropped-12.png', 'https://www.iirwt.com/', 'Linux备忘录', '');
    addFriendLink('https://www.asfor.cn/usr/uploads/2020/01/1371049170.jpg', 'https://www.asfor.cn/', '九思学舍', '');
    addFriendLink('https://image.wuquejs.cn/logo.jpg', 'https://www.wuquejs.cn/', '无缺博客', '');
    addFriendLink('https://images.k8stech.net/avatar.jpg', 'https://www.k8stech.net/', 'kubernetes技术栈', '');
    addFriendLink('https://www.devopstory.cn/wp-content/uploads/2021/11/30971637511228_.pic_.jpg', 'https://www.devopstory.cn/', '运维开发故事', '');
    addFriendLink('https://img.kubesre.com/logo.png', 'https://www.kubesre.com', '云原生运维圈', '');
    addFriendLink('https://images.k8stech.net/avatar.jpg', 'https://unixsre.com/', 'UNIXSRE', '');
    // addFriendLink('https://sre.ayunw.cn/images/whoami/avatar.jpg', 'https://sre.ayunw.cn/', 'ayunw运维博客', '');
    addFriendLink('https://renwole.com/wp-content/uploads/2022/10/folder.gif', 'https://renwole.com/', '任我乐', 'Linux OS Mirror Repository');
    addFriendLink('https://blog.jiangliuhong.top/img/my.png', 'https://blog.jiangliuhong.top', 'JaromeJiang', '');
</script>
