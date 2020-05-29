-- hot模式只适合本地调试，可以使用package打包为dist上线（参考example）
-- 下面是注册你的本机路径，识别lua目录的加载
package.path = package.path .. ";Z:\\Workspace\\war3\\hunzsig-warcraft3\\h-lua\\?.lua"
package.path = package.path .. ";Z:\\Workspace\\war3\\hunzsig-warcraft3\\w3x-my-tower\\?.lua"

require "loader"
