.class public Lcom/perm/kate/color_picker/ColorPickerBox;
.super Landroid/view/View;
.source "ColorPickerBox.java"


# instance fields
.field final color:[F

.field luar:Landroid/graphics/Shader;

.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 20
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->color:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->paint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, -0x1

    const/high16 v7, -0x1000000

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->luar:Landroid/graphics/Shader;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->color:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    .line 39
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 40
    new-instance v1, Landroid/graphics/ComposeShader;

    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->luar:Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 41
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method setHue(F)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->color:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
