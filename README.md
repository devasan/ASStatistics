 [![license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/devasan/ASStatistics)

# ASStatistics
无需插入代码即可完成一般用户行为统计

- 用法

> 根据具体需求修改`Analysis.plist`内容即可，
页面进入、离开，添加`NSString`“ENTER”、“LEAVE”和对应的事件ID；
点击事件，一般添加`NSString`方法名和对应的事件ID，如果多个control调用同一个方法，添加`NSDictionary` control tag和对应的事件ID

