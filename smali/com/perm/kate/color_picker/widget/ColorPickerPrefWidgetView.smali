.class public Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;
.super Landroid/view/View;
.source "ColorPickerPrefWidgetView.java"


# instance fields
.field paint:Landroid/graphics/Paint;

.field rectSize:F

.field rectSize2:F

.field strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->rectSize:F

    .line 22
    const/high16 v1, 0x41e00000    # 28.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->rectSize2:F

    .line 23
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->strokeWidth:F

    .line 25
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->paint:Landroid/graphics/Paint;

    .line 26
    iget-object v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->strokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    iget v1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->strokeWidth:F

    iget v2, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->strokeWidth:F

    iget v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->rectSize:F

    iget v3, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->strokeWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->rectSize2:F

    iget v4, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->strokeWidth:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 35
    return-void
.end method
