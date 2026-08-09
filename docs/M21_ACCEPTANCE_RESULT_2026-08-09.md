# M21 本地验收结果 2026-08-09

状态：**通过 / accepted**。

## 自动化

- 单元测试：64/64 通过（含 `M21ReleaseReconciliationTest`）。
- clean build：成功。
- GameTest：65/65 通过（用户本地 2.036s）。
- `verifyReleaseJarContents`：通过，正式 JAR 零 testcontrol。
- 独立服务端冒烟：通过，exit 0。
- 客户端日志：零 FATAL/ERROR、零缺失模型/贴图、零崩溃报告。

## 实机验收

- M14 时代真实验收存档正常加载，零迁移提示。
- 湿润地质岛原两格熔岩与滴水石路线保持不变。
- 应急配方 `7 圆石 + 1 红石块 + 1 空桶 -> 1 熔岩桶` 实机合成成功。
- 近距外部生态岛保持牛×2、猪×2。
- 合格远距生态岛提供鸡×2、羊×2。
- 多次离开再返回后鸡羊数量稳定，不重复生成。
- 飞船 91 格货舱、存储模块、燃料、物流槽 90、M19 补给幽灵槽 127–130 回归正常。

## 权威源码

用户回传：`skyremnants-m21-verified-full-project-20260809.zip`。

最终归档：`skyremnants-m21-final-verified-full-project-20260809.zip`，SHA-256 `762e95a413ea030758f396980ed3f3178250ea38d61959a05789417ffa99e9c5`。
