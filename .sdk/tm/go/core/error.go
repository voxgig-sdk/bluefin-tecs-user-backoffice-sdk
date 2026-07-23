package core

type BluefinTecsUserBackofficeError struct {
	IsBluefinTecsUserBackofficeError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewBluefinTecsUserBackofficeError(code string, msg string, ctx *Context) *BluefinTecsUserBackofficeError {
	return &BluefinTecsUserBackofficeError{
		IsBluefinTecsUserBackofficeError: true,
		Sdk:              "BluefinTecsUserBackoffice",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *BluefinTecsUserBackofficeError) Error() string {
	return e.Msg
}
