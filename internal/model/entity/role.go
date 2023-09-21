// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/encoding/gjson"
)

// Role is the golang structure for table role.
type Role struct {
	Id         int         `json:"id"         description:""` //
	Name       string      `json:"name"       description:""` //
	Code       string      `json:"code"       description:""` //
	Permission *gjson.Json `json:"permission" description:""` //
}
