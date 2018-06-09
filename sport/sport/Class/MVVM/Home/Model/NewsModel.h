//
//  NewsModel.h
//  sport
//
//  Created by Erha on 2018/6/5.
//  Copyright © 2018年 Erha. All rights reserved.
//

#import "BaseModel.h"
/*
 
 "id":"12766",
 "consultName":"图片报：多家豪门有意帕瓦尔 阿森纳兴趣很大",
 "consultImg":"https://tu.qiumibao.com/uploads/day_180523/5b050a82468e3.jpg",
 "video":"",
 "consultDetail":"<div id="post_edit_container"><p>WE体育6月5日讯 据《图片报》消息，22岁的法国球员帕瓦尔而今成了欧洲最炙手可热的后卫，多家欧洲豪门都对他有意。</p><p>除了中卫，帕瓦尔还能出任后腰和右边后卫，他也坦承希望能转会更大的俱乐部：<strong>“我不能承诺我会留在斯图加特。我的顾问和我有自己的想法，希望能够更进一步。”</strong></p><p>斯图加特更希望能留住帕瓦尔，因此除非得到一份疯狂的报价才可能放人。这意味着德甲范围内只有拜仁有可能买得起这名年轻的法国国脚。</p><p>而在欧洲范围内，英超球队阿森纳也对帕瓦尔兴趣很大，枪手在过去两个赛季为新援投入了超过一亿欧元。此前根据《队报》消息，阿森纳已经为帕瓦尔而向斯图加特送上了一份4400万欧元的报价。</p><p>帕瓦尔同斯图加特的合同将在2021年到期，因此斯图加特方面对此并不担心。</p></div> <style> *{ margin: 0; padding: 0; font-family: PingFangSC-Regular,"Source Han Sans CN",sans-serif;; box-sizing: border-box; -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; text-rendering: optimizeLegibility; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; }   #post_edit_container{ padding: 3vw; color:#4a4a4a !important; font-size:4vw; word-break: break-word; // text-align:justify; }  #post_edit_container h1{ font-size:6vw !important; // margin:1vh 0; font-weight: 700 !important; } #post_edit_container h2{ font-size:5.5vw !important; // margin:1vh 0; font-weight: 600 !important; } #post_edit_container h3{ font-size:5vw !important; // margin:1vh 0; font-weight: 500 !important; } #post_edit_container h4{ font-size:4.5vw !important; // margin:1vh 0; font-weight: 400 !important; } #post_edit_container h5{ font-size:4.2vw !important; // margin:1vh 0; font-weight: 400 !important; }  #post_edit_container p{ margin: 2.5vw 0; color:#4a4a4a !important; }  #post_edit_container p,#post_edit_container div,#post_edit_container span{ font-size:4.2vw!important; word-break: break-word!important; text-align:justify; background:none!important; // font-weight: 400 !important; // letter-spacing: 1px; line-height: 160%; }  #post_edit_container img{ width:98%!important;margin:0 1%!important; }  #post_edit_container li { list-style: none; }  #post_edit_container a { text-decoration: none; color:#4a4a4a !important; } #post_edit_container video{ width:89vw; margin:2vw 0; height:50vw; background: rgba(0,0,0,0.1); }  #post_edit_container .ql-align-center{ text-align: center; }  #post_edit_container strong{ font-weight: 600 !important; } </style>",
 "top":"1",
 "num":"0",
 "classId":"2",
 "authorId":"1418",
 "recommendId":"8",
 "hot":"0",
 "url":"https://news.zhibo8.cc/zuqiu/2018-06-05/5b16061b0351a.htm",
 "urlName":"直播吧",
 "hasExamine":"1",
 "status":"1",
 "updateTime":"2018-06-05 11:50:34",
 "createTime":"2018-06-05 11:50:05",
 "commentNum":"0"
 },
 */
@interface NewsModel : BaseModel
@property(nonatomic ,strong)NSString *id;
@property(nonatomic ,strong)NSString *consultName;
@property(nonatomic ,strong)NSString *consultImg;
@property(nonatomic ,strong)NSString<Optional> *video;
@property(nonatomic ,strong)NSString *consultDetail;
@property(nonatomic ,strong)NSString *top;
@property(nonatomic ,strong)NSString *num;
@property(nonatomic ,strong)NSString *classId;
@property(nonatomic ,strong)NSString *authorId;
@property(nonatomic ,strong)NSString *recommendId;
@property(nonatomic ,strong)NSString *hot;
@property(nonatomic ,strong)NSString *url;
@property(nonatomic ,strong)NSString *urlName;
@property(nonatomic ,strong)NSString *hasExamine;
@property(nonatomic ,strong)NSString *status;
@property(nonatomic ,strong)NSString *updateTime;
@property(nonatomic ,strong)NSString *createTime;
@property(nonatomic ,strong)NSString *commentNum;

@end
