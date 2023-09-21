package mid

import "github.com/gogf/gf/v2/encoding/gjson"

type User struct {
	Username string      `v:"required|length:4,30#账号必须|账号长度为:{min}到:{max}位" json:"username"`
	Phone    string      `json:"phone"`
	Email    string      `json:"email"`
	RealName string      `v:"required#真实姓名必须" json:"real_name"`
	Role     *gjson.Json `json:"role"`
}
