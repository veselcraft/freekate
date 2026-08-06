.class public Lcom/perm/kate/color_picker/ColorPickerBox;
.super Landroid/view/View;
.source "ColorPickerBox.java"


# instance fields
.field final color:[F

.field luar:Landroid/graphics/Shader;

.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->color:[F

    .line 24
    return-void

    .line 20
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->color:[F

    .line 28
    return-void

    .line 20
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->paint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->paint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredHeight()I

    move-result v2

    int-to-float v4, v2

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->luar:Landroid/graphics/Shader;

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->color:[F

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 39
    .local v6, "rgb":I
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredWidth()I

    move-result v2

    int-to-float v3, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 40
    .local v0, "dalam":Landroid/graphics/Shader;
    new-instance v13, Landroid/graphics/ComposeShader;

    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->luar:Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v2, v0, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 41
    .local v13, "shader":Landroid/graphics/ComposeShader;
    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredWidth()I

    move-result v2

    int-to-float v10, v2

    invoke-virtual {p0}, Lcom/perm/kate/color_picker/ColorPickerBox;->getMeasuredHeight()I

    move-result v2

    int-to-float v11, v2

    iget-object v12, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->paint:Landroid/graphics/Paint;

    move-object v7, p1

    move v8, v1

    move v9, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 43
    return-void
.end method

.method setHue(F)V
    .locals 2
    .param p1, "hue"    # F

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerBox;->color:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/color_picker/ColorPickerBox;->invalidate()V

    .line 48
    return-void
.end method
