// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/encoding/gjson"
	"github.com/gogf/gf/v2/os/gtime"
)

// User is the golang structure for table user.
type User struct {
	Id        uint        `json:"id"        description:""`       //
	Username  string      `json:"username"  description:"用户名"`    // 用户名
	Password  string      `json:"password"  description:"密码"`     // 密码
	Phone     string      `json:"phone"     description:"手机号码"`   // 手机号码
	Email     string      `json:"email"     description:"邮箱"`     // 邮箱
	RealName  string      `json:"realName"  description:"真实姓名"`   // 真实姓名
	Enabled   bool        `json:"enabled"   description:"是否启用状态"` // 是否启用状态
	Role      *gjson.Json `json:"role"      description:"角色 id"`  // 角色 id
	CreatedAt *gtime.Time `json:"createdAt" description:"创建时间"`   // 创建时间
}
