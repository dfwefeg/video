<%--
  Created by IntelliJ IDEA.
  User: martin
  Date: 2020/12/18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="shortcut icon" href=${pageContext.request.contextPath}/static/favicon.ico type=image/x-icon>
<style>
a:link {color: #666}
a:visited {color: #666}
.t{width: 420px;height: 62px;line-height: 24px;overflow: hidden;position: absolute;left: 0;bottom: 0;color: #fff;background: url(${pageContext.request.contextPath}/static/default/images/gradient.png) repeat-x;}
.t1{font-size: 16px;padding: 0;color: #999;display: block;overflow: hidden;height: 80px;line-height: 80px;padding-left: 15px;}
.t1 a{font-size: 16px;color: #fff;text-decoration: none;}
.martin-header .top-menu{position: relative;z-index: 200;height: 42px;color: #222;}
.martin-header .top-menu .scrub{position: absolute;top: 0;left: 0;width: 100%;height: 100%;background-position: center -10px;background-repeat: no-repeat;-webkit-filter: blur(4px);filter: blur(4px);}
.martin-header .top-menu .top-mask{position: absolute;top: 0;left: 0;width: 100%;height: 100%;background-color: hsla(0,0%,100%,.4);-webkit-box-shadow: rgba(0,0,0,.1) 0 1px 2px;box-shadow: 0 1px 2px rgba(0,0,0,.1);}
.martin-header .martin-wrapper{margin: 0 auto;width: 1340px;}
.martin-header .fl{float: left;}
.martin-header .top-menu .menu-con .menu-item.home{margin-left: -10px;padding-left: 12px;}
.martin-header .top-menu .menu-con .menu-item{float: left;text-align: center;line-height: 42px;height: 42px;position: relative;background-color: hsla(0,0%,100%,0);-webkit-transition: all .3s;-o-transition: all .3s;transition: all .3s;}
.martin-header .top-menu .menu-con .menu-item.home a{padding-left: 20px;}
.martin-header .top-menu .menu-con .menu-item .title{color: #222;height: 100%;display: block;padding: 0 11px;}
.martin-header a{-webkit-transition: color .2s;-o-transition: color .2s;transition: color .2s;}
.martin-header .top-menu .menu-con .menu-item.home i{position: absolute;width: 17px;height: 14px;left: 14px;top: 12px;display: inline-block;background-image: url(${pageContext.request.contextPath}/static/default/images/home.png);}
.martin-header .top-menu .up-load{position: relative;width: 58px;height: 42px;}
.martin-header .fr{float: right;}
.martin-header .fl, .martin-header .fr{display: inline;}
.martin-header .top-menu .up-load .u-link{display: block;width: 100%;height: 48px;line-height: 42px;text-align: center;font-size: 14px;color: #fff;background-image: url(${pageContext.request.contextPath}/static/default/images/upload.png);}
.martin-header .profile-info{width: 58px;}
.martin-header .profile-info .i-face{position: absolute;z-index: 20;width: 36px;height: 36px;left: 11px;top: 0;-webkit-transition: .3s;-o-transition: .3s;transition: .3s;}
.martin-header .profile-info .i-face .face{border: 0 solid #fff;width: 100%;height: 100%;border-radius: 50%;}
.martin-header fieldset, .martin-header img{border: none;vertical-align: middle;}
.martin-header .head-banner{position: relative;z-index: 199;height: 170px;margin-top: -42px;background: #eee;background-position: center -10px;background-repeat: no-repeat;}
.martin-header .head-banner .head-content{position: relative;height: 170px;}
.martin-header .search{position: absolute;bottom: 20px;right: 0;width: 268px;height: 32px;padding: 2px 2px 2px 72px;background-color: #e5e9ef;background-color: rgba(0,0,0,.12);border-radius: 6px;font-size: 12px;z-index: 10;}
.martin-header .search .searchform{background-color: #fff;background-color: hsla(0,0%,100%,.88);display: block;height: 32px;border-radius: 4px;-webkit-transition: background-color .2s;-o-transition: .2s background-color;transition: background-color .2s;}
.martin-header .search .search-keyword{float: left;width: 200px;color: #222;font-size: 12px;overflow: hidden;height: 32px;line-height: 32px;padding: 0 12px;border: 0;-webkit-box-shadow: none;box-shadow: none;background-color: transparent;}
.martin-header .search button.search-submit{display: block;position: absolute;right: 0;width: 48px;min-width: 0;cursor: pointer;height: 32px;background: url(${pageContext.request.contextPath}/static/default/images/search-blue.png) center center no-repeat;margin: 0;padding: 0;border: 0;}
.martin-header .search .link-ranking{position: absolute;left: 2px;top: 2px;height: 32px;line-height: 32px;background-color: #fff;background-color: hsla(0,0%,100%,.88);border-radius: 4px;width: 68px;-webkit-transition: background-color .2s;-o-transition: .2s background-color;transition: background-color .2s;}
.martin-header .search .link-ranking span{padding-left: 26px;color: #f25d8e;display: inline-block;background: url(${pageContext.request.contextPath}/static/default/images/ranking-red.png) 0 center no-repeat;}
.martin-header .head-banner .head-content .head-logo{position: absolute;width: 220px;height: 105px;left: 24px;top: 55px;background: transparent no-repeat 0;z-index: 10;}
.im-list-box{display: none;font-size: 12px;color: #222;position: absolute;width: 110px;left: calc(50% - 55px) !important;background: #FFF;-webkit-box-shadow: rgba(0, 0, 0, 0.16) 0px 2px 4px;box-shadow: rgba(0, 0, 0, 0.16) 0px 2px 4px;border-radius: 0 0 4px 4px;overflow: hidden;}
#im-list-box:hover .im-list-box{display: block;}
.im-list{display: block;text-align: center;position: relative;line-height: 42px;height: 42px;}
.im-notify.im-number.im-center{top: 14px;left: 80px;}
.im-notify.im-number{height: 14px;line-height: 13px;border-radius: 10px;padding: 1px 3px;font-size: 12px;min-width: 20px;text-align: center;color: #fff;}
.im-notify{position: absolute;background-color: #fb7299;}
.martin-wrapper ul li:hover a{background: rgba(255,255,255,0.3);}
.im-list-box .im-list:hover{background-color:#e5e9ef;color:#2fb3ff;}

.martin-nav{width: 100%;margin: 0 auto;border-bottom: 1px solid #e5e5e5;background: #fff;}
.martin-nav .nav{width: 1340px;margin: 0 auto;}
.martin-nav .nav ul{overflow: hidden;height: 46px;white-space: nowrap;}
.martin-nav .nav ul li{float: left;height: 46px;line-height: 46px;margin-right: 35px;}
.martin-nav .nav ul li.active a{color: #2fb3ff;line-height: 46px;height: 43px;border-bottom: 3px solid #2fb3ff;}
.martin-nav .nav ul li a{display: block;float: left;padding: 0 7px;height: 46px;color: #222;font-size: 16px;transition: none;}

/*??????*/
.footer-wrap{font-size: 20px;position: relative;background: #fff;color: #333;padding-bottom: 35px;margin-top:20px;}
.footer-inner{padding-top:15px;}
.footmenu{text-align: center;}
.footmenu .menu-item{color: #333; font-size: 14px; line-height: 2.6; display: inline-block; margin-top: 20px;}
.footmenu .dl{display: inline-block; width: 1px; height: 14px; vertical-align: middle; margin: 0 15px; background: #e5e9ef;}
.copyright{line-height: 2.6; text-align: center; font-size: 14px;}

/*????????????*/
.alien{position: fixed;bottom: 12px;right: 10px;z-index: 99999;color: #fff;padding-bottom: 65px;min-width: 50px;}
.alien .feedback{margin-bottom: 15px;}
.alien div{text-align: center;}
.alien .feedback a{display: block;height: 57px;background: url(${pageContext.request.contextPath}/static/default/images/feedback_1.png) no-repeat 0 0;margin: 0 auto;}
.alien .feedback a:hover{background: url(${pageContext.request.contextPath}/static/default/images/feedback_2.png) no-repeat 0 0;}
.alien #goTopBtn{display: none;min-width: 29px;height: 65px;cursor: pointer;position: absolute;width: 100%;}
.alien #goTopBtn img{display: inline-block;}
</style>

<!--??????-->
<div class="martin-header">
	<!--??????-->
	<div class="top-menu">
		<!--??????????????????-->
		<div class="scrub" style="background-image: url(${pageContext.request.contextPath}/static/default/images/banner.png);"></div>
		<!--????????????-->
		<div class="top-mask"></div>
		<!--????????????-->
		<div class="martin-wrapper">
			<!--????????????-->
			<div class="menu-con fl">
				<ul>
					<li class="menu-item home"><a href="${webInfo.domain}" class="title"><i></i>??????</a></li>
				</ul>
			</div>
			<!--????????????-->
			<div class="menu-con fr">
				<ul>
					<c:choose>
						<c:when test="${empty userInfo}">
							<li class="menu-item"><a href="javascript:;" onclick="loginDialog();" class="title">??????</a></li>
							<li class="menu-item"><a href="${pageContext.request.contextPath}/portal/register.action" target="_blank" class="title">??????</a></li>
						</c:when>
						<c:otherwise>
							<li class="menu-item profile-info">
								<a href="javascript:;" class="title">
									<div class="i-face">
										<c:choose>
											<c:when test="${empty userInfo.avatar}">
												<img src="${pageContext.request.contextPath}/static/default/images/akari.jpg" class="face">
											</c:when>
											<c:otherwise>
												<img src="${userInfo.avatar}" class="face">
											</c:otherwise>
										</c:choose>
									</div>
								</a>
							</li>
							<li id="im-list-box" class="menu-item">
								<a href="javascript:;" class="title">${userInfo.loginName}</a>
								<div class="im-list-box">
									<c:if test="${userInfo.groupName=='?????????'}">
										<a class="im-list" href="${pageContext.request.contextPath}/admin/index.action" target="_blank">????????????</a>
									</c:if>
									<a class="im-list" href="${pageContext.request.contextPath}/portal/accountset.action" target="_blank">????????????</a>
									<a class="im-list" href="javascript:;" onclick="logout()">????????????</a>
								</div>
							</li>
						</c:otherwise>
					</c:choose>
					
				</ul>
			</div>
		</div>
	</div>
	
	<!--????????????-->
	<div class="head-banner" style="background-image: url(${pageContext.request.contextPath}/static/default/images/banner.png);">
		<div class="head-content martin-wrapper">
			<!--?????????-->
			<div class="search">
				<div class="searchform">
					<input type="text" id="keyWord" class="search-keyword original" value="${keyWord}" onkeydown="if(event.keyCode==13){search(this.value);}" />
					<button id="search" class="search-submit"></button>
				</div>
				<a href="#" target="_blank" class="link-ranking"><span>?????????</span></a>
			</div>
<%--			<a href="#" class="head-logo" style="background-image: url(${pageContext.request.contextPath}/static/default/images/logo_s.png);background-size:100% 100%;background-color:rgba(255,255,255,0.2);"></a>--%>
		</div>
		<a target="_blank" class="banner-link"></a>
	</div>
</div>

<!--??????-->
<div class="martin-nav">
	<div class="nav">
		<ul>
			<c:if test="${!empty navlist}">
				<c:forEach items="${navlist}" var="entity">
					<c:choose>
						<c:when test="${!empty active && fn:contains(entity.link, active)}">
							<li class="active"><a href="${pageContext.request.contextPath}/${entity.link}">${entity.name}</a></li>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${fn:contains(entity.link, 'http')}">
									<li><a href="${entity.link}" target="_blank">${entity.name}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="${pageContext.request.contextPath}/${entity.link}">${entity.name}</a></li>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:if>
		</ul>
	</div>
</div>

<script>
	var path = "${webInfo.domain}";

	$("#search").click(function() {
		// ???????????????
		var keyWord = $("#keyWord").val();
		search(keyWord);
	});

	// ??????
	function search(keyWord) {
		// ???????????????????????????
		keyWord = keyWord.replace(/(^\s*)|(\s*$)/g, "");
		if (keyWord!="") {
			keyWord = keyWord.replace(":", "???");
			window.location.href = "${pageContext.request.contextPath}/portal/search.action?keyWord="+ keyWord;
		}
	}
	
	// ???????????????
	function loginDialog() {
		javaex.dialog({
			type : "login",	// ???????????????
			width : "400",
			height : "320",
			url : "${pageContext.request.contextPath}/portal/login.action"
		});
	}
	
	// ????????????
	function logout() {
		$.ajax({
			url : "${pageContext.request.contextPath}/portal/user/logout.json",
			type : "POST",
			dataType : "json",
			success : function(rtn) {
				if (rtn.code=="000000") {
					delCookie("UID");
					delCookie("userToken");
					window.location.reload();
				}
			}
		});
	}
</script>