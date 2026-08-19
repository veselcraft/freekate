.class Lcom/perm/kate/color_picker/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float v1, p1, p2

    if-gez v1, :cond_2

    const/4 p1, 0x0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v1, v1, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object p1, p1, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3a83126f    # 0.001f

    sub-float/2addr p1, v1

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v1, v1, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float v1, v2, v1

    mul-float v1, v1, p1

    sub-float p1, v2, v1

    cmpl-float v1, p1, v2

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, p1

    .line 68
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-static {p1, p2}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$000(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V

    .line 71
    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object p2, p1, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-static {p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$100(Lcom/perm/kate/color_picker/ColorPickerDialog;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/perm/kate/color_picker/ColorPickerBox;->setHue(F)V

    .line 72
    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-virtual {p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->moveCursor()V

    .line 73
    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object p2, p1, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewNewColor:Landroid/view/View;

    invoke-static {p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$200(Lcom/perm/kate/color_picker/ColorPickerDialog;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return v0
.end method
