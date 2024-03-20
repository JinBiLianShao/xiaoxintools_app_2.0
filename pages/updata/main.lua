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

对话框()
.设置标题("更新说明")
.设置消息("当前软件版本为2.0.2，请根据当前版本查看是否为最新版本，如果不是下载更新。版本更新内容：1.增加了个人博客。2.增加了我的其他应用下载地址。3.优化软件运行的稳定性")
.设置积极按钮("确定")
.设置消极按钮("取消")
.显示()


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
    
    --TODO ：onDrawerListItemClick
    
end

-- @param keyword 搜索栏输入的文本
-- @description 顶栏搜索功能回调事件
function onSearchEvent(keyword)
    --TODO：onSearchEvent
    
end

-- @param title 点击的菜单标题
-- @description 顶栏菜单项目点击回调事件
function onMenuItemClick(title)
   --TODO：onMenuItemClick

end

--悬浮按钮点击事件
function onFloatingActionButtonClick(v)
  --TODO：onFloatingActionButtonClick

end

