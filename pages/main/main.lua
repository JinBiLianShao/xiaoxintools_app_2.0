--
-- @author jinbilianshao 
-- @description Main是应用的主模块，其中注册了应用运行中UI事件的回调、Activity生命周期的回调等
-- 你也可以在此编写启动事件代码，或控制应用运行逻辑、自定义应用UI等等。
-- @other 本模版已为你编写好基础事件，建议在阅读注释并理解相关参数意义后再进行扩展编写
--

-- ****默认导入包****
require "import"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
-- ****不需要请删除****

--FusionUtil = luajava.bindClass "net.fusionapp.core.util.FusionUtil"
android_R = luajava.bindClass "android.R"


--初始化一张点击事件表
functions={}

functions["主页"]=function()
  加载网页("http://jinbilianshao.github.io/xiaoxin/")
end

functions["音乐库"]=function()
  进入子页面("music",{"nil"})
end

functions["爱优芒腾解析"]=function()
  进入子页面("video",{"nil"})
end

functions["小鑫书库(自建)"]=function()
  进入子页面("mybook",{"nil"})
end

functions["小说爬虫"]=function()
  进入子页面("upbook",{"nil"})
end

functions["软件更新"]=function()
  进入子页面("updata",{"nil"})
end

functions["作者的博客"]=function()
  进入子页面("boke",{"nil"})
end

functions["小鑫应用商城"]=function()
  进入子页面("app",{"nil"})
end

functions["自建代码库(可注册)"]=function()
  进入子页面("github",{"nil"})
end

functions["有bug联系作者"]=function()
  联系QQ(2013182991)
  弹出消息("作者QQ:2013182991")
end



--[=[仍然同理，需要写哪个项目的点击事件就添加
 
functions["你的项目标题"]=function()
end
 
以上代码块到文件中]=]

--注册点击事件，如无其它需求，不用扩展写
function onDrawerListItemClick(data, recyclerView, listIndex, itemIndex)
  --侧滑栏列表的数据是二维结构，所以需要先获取到点击项目所在列表的数据
  local listData = data.get(listIndex);
  --获取到所在列表的数据后获取点击项目的数据
  local itemData = listData.get(itemIndex);
  --最后获取到点击的项目的标题
  local title = itemData.getTitle();
  local event=functions[title]
  if(event~=nil)then
    event()
  end
end

--[=[
-- @param data 侧滑栏列表的全部数据
-- @param recyclerView 侧滑栏列表控件
-- @param listIndex 点击的列表索引（点击的是第几个列表）
-- @param clickIndex 点击的项目索引（点击的第几个项目）
function onDrawerListItemClick(data, recyclerView, listIndex, itemIndex)
  --侧滑栏列表的数据是二维结构，所以需要先获取到点击项目所在列表的数据
  local listData = data.get(listIndex);
  --获取到所在列表的数据后获取点击项目的数据
  local itemData = listData.get(itemIndex);
  --最后获取到点击的项目的标题
  local itemTitle = itemData.getTitle();
  if itemTitle == "Home" then
    if itemData.isChecked() then
      加载网页("https://jinbilianshao.github.io/xiaoxin/")
     else
      --switchNightTheme(itemData, true, "Night.json")
    end
   else
    print("Click: "..itemTitle)
  end
endend
]=]

--重新加载当前activity
function recreate()
  activity.finish();
  activity.startFusionActivity(activity.getLoader().getPageName());
  activity.overridePendingTransition(android_R.anim.fade_in,android_R.anim.fade_out);
end

--[=[切换主题和夜间模式
function switchNightTheme(listItemData, isNightMode, newThemeName)
  listItemData.setChecked(isNightMode)
  activity.getLoader().updatePageConfig()
  FusionUtil.changeTheme(activity.getLoader().getProjectDir().getAbsolutePath(), newThemeName)
  FusionUtil.setNightMode(isNightMode)
  recreate()
end ]=]

-- @param keyword 搜索栏输入的文本
-- @description 顶栏搜索功能回调事件
function onSearchEvent(keyword)
  --TODO：
  加载网页("https://vip.bljiex.com/?v=" .. keyword)
end

-- @param title 点击的菜单标题
-- @description 顶栏菜单项目点击回调事件
function onMenuItemClick(title)
  --TODO：

end


--悬浮按钮点击事件
function onFloatingActionButtonClick(v)
  --TODO：

end--TODO

