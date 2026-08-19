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
    .locals 3

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42600000    # 56.0f

    mul-float p2, p2, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    float-to-double v1, p2

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p2, v1

    iput p2, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->rectSize:F

    const/high16 p2, 0x41e00000    # 28.0f

    mul-float p2, p2, p1

    add-float/2addr p2, v0

    float-to-double v1, p2

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p2, v1

    iput p2, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->rectSize2:F

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    add-float/2addr p1, v0

    float-to-double p1, p1

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->strokeWidth:F

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->paint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->paint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->strokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 33
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    iget v2, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->strokeWidth:F

    iget v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->rectSize:F

    sub-float v3, v0, v2

    iget v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->rectSize2:F

    sub-float v4, v0, v2

    iget-object v5, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPrefWidgetView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
