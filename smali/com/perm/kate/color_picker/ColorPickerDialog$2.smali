.class Lcom/perm/kate/color_picker/ColorPickerDialog$2;
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
    .line 77
    iput-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 84
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 86
    .local v1, "y":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_1

    const/4 v0, 0x0

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v3, v3, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v3}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v3, v3, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v3}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredWidth()I

    move-result v3

    int-to-float v0, v3

    .line 88
    :cond_2
    cmpg-float v3, v1, v6

    if-gez v3, :cond_3

    const/4 v1, 0x0

    .line 89
    :cond_3
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v3, v3, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v3}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v3, v3, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v3}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredHeight()I

    move-result v3

    int-to-float v1, v3

    .line 91
    :cond_4
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v4, v4, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v4}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    mul-float/2addr v4, v0

    invoke-static {v3, v4}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$300(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V

    .line 92
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v4, v4, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewSatVal:Lcom/perm/kate/color_picker/ColorPickerBox;

    invoke-virtual {v4}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v5, v4

    mul-float/2addr v4, v1

    sub-float v4, v5, v4

    invoke-static {v3, v4}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$400(Lcom/perm/kate/color_picker/ColorPickerDialog;F)V

    .line 95
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-virtual {v3}, Lcom/perm/kate/color_picker/ColorPickerDialog;->moveTarget()V

    .line 96
    iget-object v3, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v3, v3, Lcom/perm/kate/color_picker/ColorPickerDialog;->viewNewColor:Landroid/view/View;

    iget-object v4, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$2;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-static {v4}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$200(Lcom/perm/kate/color_picker/ColorPickerDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    .end local v0    # "x":F
    .end local v1    # "y":F
    :goto_0
    return v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method
