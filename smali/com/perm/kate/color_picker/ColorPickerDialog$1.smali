.class Lcom/perm/kate/color_picker/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/color_picker/ColorPickerDialog;-><init>(Landroid/content/Context;ILcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/color_picker/ColorPickerDialog;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/high16 v5, 0x43b40000    # 360.0f

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 60
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 61
    .local v1, "y":F
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    const/4 v1, 0x0

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v3, v3, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v3, v3, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3a83126f    # 0.001f

    sub-float v1, v3, v4

    .line 63
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v3, v3, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewHue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v5, v3

    mul-float/2addr v3, v1

    sub-float v0, v5, v3

    .line 64
    .local v0, "hue":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_3

    const/4 v0, 0x0

    .line 65
    :cond_3
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-static {v3, v0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$000(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V

    .line 68
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v3, v3, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-static {v4}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$100(Lcom/perm/kate/color_picker/ColorPickerDialog;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/perm/kate/color_picker/ColorPickerBox;->setHue(F)V

    .line 69
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-virtual {v3}, Lcom/perm/kate/color_picker/ColorPickerDialog;->moveCursor()V

    .line 70
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v3, v3, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewNewColor:Landroid/view/View;

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$1;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-static {v4}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$200(Lcom/perm/kate/color_picker/ColorPickerDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    .end local v0    # "hue":F
    .end local v1    # "y":F
    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
