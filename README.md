# MVVM
前情提要:自己开发时候用的,代码可能吧比较垃圾,但是我不需要别人的评判,是要能对自己写项目有好处就可以啦...

本人编写MVVM项目时,发现由于MVVM复用性较高,,顺带自己写了一个架构,里面包含一些工具类以及一些分类,功能较全,慢慢继续更新
封装了一些NSdate,NString,uibutton,以及一些工具类,偏于自己以后写项目

UIButton+ImageTitleLayout
利用runtime,重写titleRect和imageRect方法,实现自定义按钮(含有图片和文本),直接以按钮左上角为原点(0,0)进行设置坐标
用法:btn.imageRect = CGRectMake(20, 0, 60, 60);
    btn.titleRect = CGRectMake(0, 65, 100, 35);
    
    
