package mid

type Dept struct {
	Name     string `v:"required" json:"name"`
	Rank     int    `v:"required" json:"rank"`
	ParentId int    `json:"parentId"`
}
