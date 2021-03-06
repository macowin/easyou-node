-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 11 月 06 日 06:40
-- 服务器版本: 5.0.90
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `ey`
--

-- --------------------------------------------------------

--
-- 表的结构 `ey_categorys`
--

CREATE TABLE IF NOT EXISTS `ey_categorys` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(10) character set utf8 default NULL,
  `tid` int(1) default NULL COMMENT '1标签，2分类',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `ey_categorys`
--

INSERT INTO `ey_categorys` (`id`, `name`, `tid`) VALUES
(1, '默认分类', 2),
(2, '分类二', 1),
(3, '分类一', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ey_comments`
--

CREATE TABLE IF NOT EXISTS `ey_comments` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(20) default NULL,
  `ip` varchar(16) default NULL,
  `address` varchar(50) default NULL COMMENT '地址',
  `email` varchar(30) default NULL,
  `tid` int(1) default NULL COMMENT '1:文章，2:心情',
  `nid` int(20) default NULL COMMENT '节点ID',
  `pid` int(5) default NULL COMMENT '评论对象',
  `comment` varchar(200) default NULL,
  `time` varchar(15) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ey_comments`
--


-- --------------------------------------------------------

--
-- 表的结构 `ey_contents`
--

CREATE TABLE IF NOT EXISTS `ey_contents` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(50) default NULL,
  `url` varchar(20) default NULL,
  `uid` int(3) default '1',
  `abscontent` text,
  `text` text,
  `time` int(15) default NULL,
  `tid` int(3) default NULL,
  `cid` int(3) default NULL,
  `ispage` int(1) default '1',
  `iscomment` int(1) default '1',
  `status` int(1) default '1',
  `view` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `ey_contents`
--

INSERT INTO `ey_contents` (`id`, `title`, `url`, `uid`, `abscontent`, `text`, `time`, `tid`, `cid`, `ispage`, `iscomment`, `status`, `view`) VALUES
(1, '关于', NULL, 1, '\n	\n		\n			easyou 1.0\n		\n		\n			easyou是一个简单的博客，没有复杂的功能。从一开始它的定位就是简单和速度。\n                                放弃了许多华而不实的东', '<p>\n	<div id="collapse-panel-2" class="am-panel-bd am-in">\n		<p class="am-text-success am-serif">\n			easyou 1.0\n		</p>\n		<p class="am-text-success am-serif">\n			easyou是一个简单的博客，没有复杂的功能。从一开始它的定位就是简单和速度。\n                                放弃了许多华而不实的东西。从开始到结束，都没有忘记它是一个博客，而非CMS。\n		</p>\n		<p class="am-text-success am-serif">\n			如果您想使用好它，可能需要一点点HTML知识。相信我。仅仅是一点点。\n                                多学一点，总是没有坏处的。\n		</p>\n		<p class="am-text-success am-serif">\n			easyou是由<a target="_blank" href="http://document.thinkphp.cn/manual_3_2.html">thinkPHP</a> 和<a target="_blank" href="http://amazeui.org/css/">amazeUI</a>的支持下完成的。如果您想要对它进行修改，请点击上面的链接来熟悉他们！\n		</p>\n		<p class="am-text-success monospace">\n			2015-06-30 大萌\n		</p>\n	</div>\n</p>', 1423889668, 1, 2, 2, 2, 1, 16),
(2, '留言', NULL, 1, '留点什么吧~', '留点什么吧~', 1423892271, 1, 2, 2, 1, 1, 21),
(3, '恭喜您：安装成功', NULL, 1, '	恭喜您：安装成功	恭喜您：安装成功	恭喜您：安装成功	恭喜您：安装成功	恭喜您：安装成功	恭喜您：安装成功	恭喜您：安装成功	恭喜您：安装成功', '<p>	<span style="background-color: rgb(0, 128, 0);">恭喜您：安装成功</span></p><p>	恭喜您：安装成功</p><p>	恭喜您：安装成功</p><p>	恭喜您：安装成功</p><p>	恭喜您：安装成功</p><p>	恭喜您：安装成功</p><p>	恭喜您：安装成功</p><p>	恭喜您：安装成功</p>', 1445418551, 2, 3, 1, 1, 1, 1),
(8, '屠呦呦与黄晓明碰撞之我见', NULL, 1, '	近来最热的话题莫过于屠呦呦获得诺贝尔奖和黄晓明结婚了。没有做到退朋友圈保智商的的我理所当然又看到一些什么一生努力不抵一场秀，屠呦呦PK黄晓明的一些论调。以往都是笑而不见。然而刚刚发现有位我一直认为很有', '<blockquote style="display:block; border-left: 5px solid #d0e5f2; padding:0 0 0 10px; margin:0; line-height:1.4; font-size: 100%;"><p>	<span style="font-size:12px;">近来最热的话题莫过于</span><span style="color:#000000;"><span style="font-size:12px;">屠呦呦获得诺贝尔奖和黄晓明结婚了。没有做到退朋友圈保智商的的我理所当然又看到一些什么一生努力不抵一场秀，</span><span style="color:#000000;font-size:12px;">屠呦呦</span><span style="font-size:12px;">PK</span><span style="color:#000000;font-size:12px;">黄晓明</span><span style="font-size:12px;">的一些论调。以往都是笑而不见。然而刚刚发现有位我一直认为很有深度的朋友居然也转载了。心情激愤，故而浅谈几句。</span></span> </p></blockquote><p>	<br><span style="color:#000000;"></span> </p><p>	<span style="color:#000000;font-size:12px;">两件完全不搭边的事情为什么会产生碰撞，无非一下几个原因。</span></p><p><br><span style="color:#000000;font-size:12px;"></span></p><pre><code class="javascript hljs"><span class="hljs-keyword">var</span> path = <span class="hljs-built_in">require</span>(<span class="hljs-string">&#39;path&#39;</span>);<span class="hljs-comment">//定义APP的根目录</span>global.APP_PATH = path.dirname(__dirname) + <span class="hljs-string">&#39;/App&#39;</span>;<span class="hljs-comment">//静态资源根目录</span>global.RESOURCE_PATH = __dirname;<span class="hljs-comment">//网站根目录</span>global.ROOT_PATH = __dirname;<span class="hljs-comment">//开启调试模式，线上环境需要关闭调试功能</span>global.APP_DEBUG = <span class="hljs-literal">true</span>;<span class="hljs-comment">//加载thinkjs启动服务</span><span class="hljs-built_in">require</span>(<span class="hljs-string">&#39;thinkjs&#39;</span>);</code></pre><p><span style="color:#000000;font-size:12px;"></span> </p>', 1445418609, 1, 2, 1, 1, 1, 5),
(9, '关注微信送红包', 'weixin', 1, '&lt;divclass=&quot;bjui-pageFooter&quot;&gt;	&lt;divclass=&quot;pages&quot;&gt;		&lt;span&gt;每页&amp;nbsp;&lt;/span&gt;		&lt;divclass=&quot;selectPagesize&quot;&gt;			&lt;selectdata-toggle=&quot;selectpicker&quot;data-toggle-change=&quot;changepagesize&quot;&gt;				{foreachfrom=$pagesizesitem=v}				&lt;optionvalue=&quot;{$v}&quot;&gt;{$v}&lt;/option&gt;				{/foreach}			&lt;/select&gt;		&lt;/div&g', '<pre><code class="javascript hljs">&lt;div <span class="hljs-class"><span class="hljs-keyword">class</span></span>=<span class="hljs-string">&quot;bjui-pageFooter&quot;</span>&gt;	<span class="xml"><span class="hljs-tag">&lt;<span class="hljs-title">div</span> <span class="hljs-attribute">class</span>=<span class="hljs-value">&quot;pages&quot;</span>&gt;</span>		<span class="hljs-tag">&lt;<span class="hljs-title">span</span>&gt;</span>每页&amp;nbsp;<span class="hljs-tag">&lt;/<span class="hljs-title">span</span>&gt;</span>		<span class="hljs-tag">&lt;<span class="hljs-title">div</span> <span class="hljs-attribute">class</span>=<span class="hljs-value">&quot;selectPagesize&quot;</span>&gt;</span>			<span class="hljs-tag">&lt;<span class="hljs-title">select</span> <span class="hljs-attribute">data-toggle</span>=<span class="hljs-value">&quot;selectpicker&quot;</span> <span class="hljs-attribute">data-toggle-change</span>=<span class="hljs-value">&quot;changepagesize&quot;</span>&gt;</span>				{foreach from=$pagesizes item=v}				<span class="hljs-tag">&lt;<span class="hljs-title">option</span> <span class="hljs-attribute">value</span>=<span class="hljs-value">&quot;{$v}&quot;</span>&gt;</span>{$v}<span class="hljs-tag">&lt;/<span class="hljs-title">option</span>&gt;</span>				{/foreach}			<span class="hljs-tag">&lt;/<span class="hljs-title">select</span>&gt;</span>		<span class="hljs-tag">&lt;/<span class="hljs-title">div</span>&gt;</span>		<span class="hljs-tag">&lt;<span class="hljs-title">span</span>&gt;</span>&amp;nbsp;条，共 {$total} 条<span class="hljs-tag">&lt;/<span class="hljs-title">span</span>&gt;</span>	<span class="hljs-tag">&lt;/<span class="hljs-title">div</span>&gt;</span>	<span class="hljs-tag">&lt;<span class="hljs-title">div</span> <span class="hljs-attribute">class</span>=<span class="hljs-value">&quot;pagination-box&quot;</span> <span class="hljs-attribute">data-toggle</span>=<span class="hljs-value">&quot;pagination&quot;</span> <span class="hljs-attribute">data-total</span>=<span class="hljs-value">&quot;{$total}&quot;</span> <span class="hljs-attribute">data-page-size</span>=<span class="hljs-value">&quot;{$pagesize}&quot;</span> <span class="hljs-attribute">data-page-current</span>=<span class="hljs-value">&quot;{$pageCurrent}&quot;</span>&gt;</span>	<span class="hljs-tag">&lt;/<span class="hljs-title">div</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-title">div</span>&gt;</span></span></code></pre>', 1445664127, 1, 2, 1, 1, 1, 47);

-- --------------------------------------------------------

--
-- 表的结构 `ey_images`
--

CREATE TABLE IF NOT EXISTS `ey_images` (
  `id` int(3) NOT NULL auto_increment,
  `pid` int(3) default NULL COMMENT '相册ID',
  `src` varchar(200) default NULL,
  `title` varchar(100) default NULL,
  `time` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ey_images`
--


-- --------------------------------------------------------

--
-- 表的结构 `ey_moods`
--

CREATE TABLE IF NOT EXISTS `ey_moods` (
  `id` int(3) NOT NULL auto_increment,
  `uid` int(3) default '1',
  `mood` varchar(200) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `ey_moods`
--

INSERT INTO `ey_moods` (`id`, `uid`, `mood`, `time`) VALUES
(1, 1, '江南三月烟花笑', 1445330611),
(2, 1, '', 1445416860),
(3, 1, '', 1445416877),
(4, 1, '66622', 1445420264),
(5, 1, '666', 1445419912),
(6, 1, '夕阳近似无限好', 1445420293);

-- --------------------------------------------------------

--
-- 表的结构 `ey_photos`
--

CREATE TABLE IF NOT EXISTS `ey_photos` (
  `id` int(3) NOT NULL auto_increment,
  `title` varchar(20) NOT NULL,
  `src` varchar(200) default NULL,
  `time` varchar(30) default NULL,
  `pass` varchar(20) default NULL,
  `abstract` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ey_photos`
--


-- --------------------------------------------------------

--
-- 表的结构 `ey_tags`
--

CREATE TABLE IF NOT EXISTS `ey_tags` (
  `id` int(3) NOT NULL auto_increment,
  `name` varchar(10) NOT NULL,
  `tid` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `ey_tags`
--

INSERT INTO `ey_tags` (`id`, `name`, `tid`) VALUES
(1, '标签1', 1),
(2, '标签2', 1);

-- --------------------------------------------------------

--
-- 表的结构 `ey_users`
--

CREATE TABLE IF NOT EXISTS `ey_users` (
  `id` int(1) NOT NULL,
  `user` varchar(10) NOT NULL,
  `qq` varchar(11) default NULL,
  `weibo` varchar(50) default NULL,
  `email` varchar(15) default NULL,
  `brief` varchar(500) default NULL,
  `img` varchar(100) default NULL,
  `pass` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ey_users`
--

INSERT INTO `ey_users` (`id`, `user`, `qq`, `weibo`, `email`, `brief`, `img`, `pass`) VALUES
(1, 'admin', '5555555', 'weibo.com', 'admin@eyblog', '6的飞起', NULL, '8f9216fdfffc5728ec2332f3fd380312');

-- --------------------------------------------------------

--
-- 表的结构 `ey_visitor`
--

CREATE TABLE IF NOT EXISTS `ey_visitor` (
  `id` int(10) NOT NULL auto_increment,
  `time` int(10) NOT NULL,
  `ip` varchar(12) NOT NULL,
  `count` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `ey_visitor`
--

