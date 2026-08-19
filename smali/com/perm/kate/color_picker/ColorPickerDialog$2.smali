.class Lcom/perm/kate/color_picker/ColorPickerDialog$2;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    const/4 p1, 0x0

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v2, v2, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object p1, p1, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    :cond_3
    cmpg-float v2, p2, v1

    if-gez v2, :cond_4

    const/4 p2, 0x0

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v1, v1, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_5

    iget-object p2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object p2, p2, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    .line 95
    :cond_5
    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v2, v1, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    mul-float v2, v2, p1

    invoke-static {v1, v2}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$300(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V

    .line 96
    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v1, p1, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v3, v1

    mul-float v1, v1, p2

    sub-float/2addr v3, v1

    invoke-static {p1, v3}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$400(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V

    .line 99
    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-virtual {p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->moveTarget()V

    .line 100
    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object p2, p1, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewNewColor:Landroid/view/View;

    invoke-static {p1}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$200(Lcom/perm/kate/color_picker/ColorPickerDialog;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return v0
.end method
