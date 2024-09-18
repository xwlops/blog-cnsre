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
- 如遇到长时间无响应或涉及违规内容将终止友链，恕不另行通知!
- 申请友链，请在本站 **[留言板](https://www.cnsre.cn/comment/)** 中留言内容格式如下：

{{< alert theme="success" dir="ltr" >}} 
网站名称：SRE运维博客
网站地址：www.cnsre.cn
网站说明：专注SRE运维技术分享的博客
网站Logo：https://www.cnsre.cn/favicon.ico
{{< /alert >}}
<br />

### 友情链接

<style>
  /* 使用 .friend-links-container 作为父容器来限定样式 */
  .friend-links-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    max-width: 960px;
    margin: auto;
    padding: 20px;
    font-family: 'Abel', Arial, Verdana, sans-serif;
  }

  .friend-links-container .card {
    width: calc(50% - 20px);
    height: 150px;
    box-shadow: 0 8px 16px -8px rgba(0,0,0,0.4);
    border-radius: 6px;
    overflow: hidden;
    position: relative;
    margin: 10px;
    transition: all 0.3s ease-in-out;
  }

  .friend-links-container .card:hover {
    transform: translateY(-10px);
  }

  .friend-links-container .additional {
    position: absolute;
    width: 150px;
    height: 100%;
    transition: width 0.4s, background 0.4s;
    overflow: hidden;
    z-index: 2;
  }

  .friend-links-container .card:hover .additional {
    width: 100%;
  }

  .friend-links-container .user-card {
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }

  .friend-links-container .user-card img {
    width: 80px;
    height: 80px;
    border-radius: 50%;
    margin-bottom: 10px;
    border: 3px solid white;
  }

  .friend-links-container .general {
    width: 300px;
    height: 100%;
    position: absolute;
    right: 0;
    padding: 20px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
  }
</style>

<div class="friend-links-container" id="card-container">
  <!-- 卡片内容将通过 JavaScript 动态插入 -->
</div>

<script>
  const cardsData = [
    {
      url: "https://www.iots.vip/",
      logo: "https://files.catbox.moe/ois151.png",
      title: "Alliot’s blog",
      description: "",
      points: ""
    },
    {
      url: "https://srebro.cn/",
      logo: "https://cn-north-1-image.s3.cn-north-1.amazonaws.com.cn/cnsre/cnsre/20240312bfb64c122f053f82b980fbc854b4d1fd.jpg",
      title: "运维小弟",
      description: "",
      points: ""
    },
    {
      url: "https://www.xiaoz.me/",
      logo: "https://cn-north-1-image.s3.cn-north-1.amazonaws.com.cn/cnsre/cnsre/202403121affd94458ab5aad8b2efc7767171c75.jpg",
      title: "小z博客",
      description: "",
      points: ""
    },
    {
      url: "https://www.yangxingzhen.com/",
      logo: "https://www.yangxingzhen.com/images/site_logo.jpg",
      title: "小柒博客",
      description: "",
      points: ""
    },
    {
      url: "https://www.asfor.cn/",
      logo: "https://www.asfor.cn/usr/uploads/2020/01/1371049170.jpg",
      title: "九思学舍",
      description: "",
      points: ""
    },
    {
      url: "https://www.wuquejs.cn/",
      logo: "https://image.wuquejs.cn/logo.jpg",
      title: "无缺博客",
      description: "",
      points: ""
    },
    {
      url: "https://www.k8stech.net/",
      logo: "https://images.k8stech.net/avatar.jpg",
      title: "kubernetes技术栈",
      description: "",
      points: ""
    },
    {
      url: "https://www.devopstory.cn/",
      logo: "https://www.devopstory.cn/wp-content/uploads/2021/11/30971637511228_.pic_.jpg",
      title: "运维开发故事",
      description: "",
      points: ""
    },
    {
      url: "https://www.kubesre.com",
      logo: "https://img.kubesre.com/logo.png",
      title: "云原生运维圈",
      description: "",
      points: ""
    },
    {
      url: "https://unixsre.com/",
      logo: "https://images.k8stech.net/avatar.jpg",
      title: "UNIXSRE",
      description: "",
      points: ""
    },
    {
      url: "https://renwole.com/",
      logo: "https://renwole.com/wp-content/uploads/2022/10/folder.gif",
      title: "任我乐",
      description: "Linux OS Mirror Repository",
      points: ""
    },
    {
      url: "https://blog.jiangliuhong.top",
      logo: "https://blog.jiangliuhong.top/img/my.png",
      title: "JaromeJiang",
      description: "",
      points: ""
    }
    // 可以根据需要添加更多卡片数据
  ];

  function getRandomLightColor() {
    // 生成 RGB 值在 180-255 范围内的颜色
    const r = Math.floor(Math.random() * 76 + 180); // 180 - 255
    const g = Math.floor(Math.random() * 76 + 180);
    const b = Math.floor(Math.random() * 76 + 180);
    return `rgb(${r}, ${g}, ${b})`;
  }

  function generateCards(cards) {
    const container = document.getElementById('card-container');
    cards.forEach((card, index) => {
      const cardElement = document.createElement('div');
      const cardClassName = `card-${index}`;
      cardElement.classList.add('card', cardClassName);
      
      // 生成浅色的随机颜色
      const cardColor1 = getRandomLightColor();
      const cardColor2 = getRandomLightColor();
      const additionalColor1 = getRandomLightColor();
      const additionalColor2 = getRandomLightColor();
      const hoverAdditionalColor1 = getRandomLightColor();
      const hoverAdditionalColor2 = getRandomLightColor();
      
      // 为卡片设置背景颜色
      cardElement.style.background = `linear-gradient(${cardColor1}, ${cardColor2})`;
      
      // 创建样式元素，设置 .additional 的背景颜色和悬停效果
      const style = document.createElement('style');
      style.textContent = `
        .${cardClassName} .additional {
          background: linear-gradient(${additionalColor1}, ${additionalColor2});
        }
        .${cardClassName}:hover .additional {
          background: linear-gradient(${hoverAdditionalColor1}, ${hoverAdditionalColor2});
        }
      `;
      document.head.appendChild(style);

      cardElement.innerHTML = `
        <div class="additional">
          <div class="user-card">
            <a href="${card.url}" target="_blank">
              <img src="${card.logo}" alt="${card.title}">
            </a>
            <div class="points center">${card.points}</div>
          </div>
        </div>
        <div class="general">
          <h4>${card.title}</h4>
          <p>${card.description}</p>
        </div>
      `;
      
      container.appendChild(cardElement);
    });
  }

  generateCards(cardsData);
</script>
