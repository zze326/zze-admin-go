// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/encoding/gjson"
	"github.com/gogf/gf/v2/os/gtime"
)

// Role is the golang structure for table role.
type Role struct {
	Id         int         `json:"id"         description:""`     //
	Name       string      `json:"name"       description:"角色名称"` // 角色名称
	Code       string      `json:"code"       description:"角色代码"` // 角色代码
	Permission *gjson.Json `json:"permission" description:"关联权限"` // 关联权限
	CreatedAt  *gtime.Time `json:"createdAt"  description:"创建时间"` // 创建时间
}
