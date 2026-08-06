.class public Lcom/perm/kate/chartview/ChartView;
.super Landroid/widget/RelativeLayout;
.source "ChartView.java"


# instance fields
.field private mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

.field private mBottomLabelHeight:I

.field private mBottomLabelLayout:Landroid/widget/LinearLayout;

.field private mGridBounds:Landroid/graphics/Rect;

.field private mGridLineColor:I

.field private mGridLineWidth:I

.field private mGridLinesHorizontal:I

.field private mGridLinesVertical:I

.field private mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

.field private mLeftLabelLayout:Landroid/widget/LinearLayout;

.field private mLeftLabelWidth:I

.field private mMaxX:D

.field private mMaxY:D

.field private mMinX:D

.field private mMinY:D

.field private mPaint:Landroid/graphics/Paint;

.field private mRightLabelWidth:I

.field private mSeries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/perm/kate/chartview/AbstractSeries;",
            ">;"
        }
    .end annotation
.end field

.field private mValueBounds:Lcom/perm/kate/chartview/RectD;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/perm/kate/chartview/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/perm/kate/chartview/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mSeries:Ljava/util/List;

    .line 36
    new-instance v1, Lcom/perm/kate/chartview/RectD;

    invoke-direct {v1}, Lcom/perm/kate/chartview/RectD;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    .line 37
    iput-wide v6, p0, Lcom/perm/kate/chartview/ChartView;->mMinX:D

    .line 38
    iput-wide v2, p0, Lcom/perm/kate/chartview/ChartView;->mMaxX:D

    .line 39
    iput-wide v6, p0, Lcom/perm/kate/chartview/ChartView;->mMinY:D

    .line 40
    iput-wide v2, p0, Lcom/perm/kate/chartview/ChartView;->mMaxY:D

    .line 42
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    .line 60
    invoke-virtual {p0, v4}, Lcom/perm/kate/chartview/ChartView;->setWillNotDraw(Z)V

    .line 61
    invoke-virtual {p0, v4}, Lcom/perm/kate/chartview/ChartView;->setBackgroundColor(I)V

    .line 63
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getTextColorByTheme(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineColor:I

    .line 64
    iput v8, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    .line 65
    const/16 v1, 0x9

    iput v1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    .line 66
    const/4 v1, 0x5

    iput v1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    .line 67
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    iput v1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelWidth:I

    .line 68
    const-wide v2, 0x4051800000000000L    # 70.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    iput v1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelHeight:I

    .line 69
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    iput v1, p0, Lcom/perm/kate/chartview/ChartView;->mRightLabelWidth:I

    .line 72
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    .line 73
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelWidth:I

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelHeight:I

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v0, "bottomLabelParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    .line 81
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/perm/kate/chartview/ChartView;->addView(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/perm/kate/chartview/ChartView;->addView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/chartview/ChartView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/chartview/ChartView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/chartview/ChartView;)Lcom/perm/kate/chartview/LabelAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/chartview/ChartView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/chartview/ChartView;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/chartview/ChartView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/perm/kate/chartview/ChartView;->drawBottomLabels()V

    return-void
.end method

.method private drawBottomLabels()V
    .locals 8

    .prologue
    .line 298
    iget v6, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    add-int/lit8 v3, v6, 0x2

    .line 299
    .local v3, "labelCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 300
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 302
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_2

    .line 303
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 304
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_0

    add-int/lit8 v6, v3, -0x1

    if-ne v2, v6, :cond_1

    .line 305
    :cond_0
    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 310
    :goto_1
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    iget-object v7, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v5, v7}, Lcom/perm/kate/chartview/LabelAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 311
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .restart local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 315
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    iget-object v7, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v5, v7}, Lcom/perm/kate/chartview/LabelAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_2

    .line 320
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 321
    .local v1, "childCount":I
    move v2, v3

    :goto_3
    if-ge v2, v1, :cond_5

    .line 322
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 323
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 324
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 321
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 326
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float v12, v0, v1

    .line 239
    .local v12, "stepX":F
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float v13, v0, v1

    .line 241
    .local v13, "stepY":F
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v0

    .line 242
    .local v6, "left":F
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    .line 243
    .local v2, "top":F
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    .line 244
    .local v4, "bottom":F
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v0

    .line 246
    .local v8, "right":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    add-int/lit8 v0, v0, 0x2

    if-ge v11, v0, :cond_0

    .line 247
    int-to-float v0, v11

    mul-float/2addr v0, v12

    add-float v1, v6, v0

    int-to-float v0, v11

    mul-float/2addr v0, v12

    add-float v3, v6, v0

    iget-object v5, p0, Lcom/perm/kate/chartview/ChartView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 246
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 250
    :cond_0
    const/4 v11, 0x0

    :goto_1
    iget v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    add-int/lit8 v0, v0, 0x2

    if-ge v11, v0, :cond_1

    .line 251
    int-to-float v0, v11

    mul-float/2addr v0, v13

    add-float v7, v2, v0

    int-to-float v0, v11

    mul-float/2addr v0, v13

    add-float v9, v2, v0

    iget-object v10, p0, Lcom/perm/kate/chartview/ChartView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 250
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 253
    :cond_1
    return-void
.end method

.method private drawLabels()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/perm/kate/chartview/ChartView;->drawLeftLabels()V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    if-eqz v0, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/perm/kate/chartview/ChartView;->drawBottomLabels()V

    .line 260
    :cond_1
    return-void
.end method

.method private drawLeftLabels()V
    .locals 9

    .prologue
    .line 265
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    invoke-virtual {v6}, Lcom/perm/kate/chartview/LabelAdapter;->getCount()I

    move-result v3

    .line 266
    .local v3, "labelCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 267
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 269
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_2

    .line 270
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_0

    add-int/lit8 v6, v3, -0x1

    if-ne v2, v6, :cond_1

    .line 272
    :cond_0
    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 277
    :goto_1
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v2

    iget-object v8, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v5, v8}, Lcom/perm/kate/chartview/LabelAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 278
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .restart local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 282
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v2

    iget-object v8, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v5, v8}, Lcom/perm/kate/chartview/LabelAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_2

    .line 287
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 288
    .local v1, "childCount":I
    move v2, v3

    :goto_3
    if-ge v2, v1, :cond_5

    .line 289
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 290
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 291
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 288
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 293
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private extendRange(DD)V
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/perm/kate/chartview/ChartView;->mMinX:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 215
    iput-wide p1, p0, Lcom/perm/kate/chartview/ChartView;->mMinX:D

    .line 218
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/chartview/ChartView;->mMaxX:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 219
    iput-wide p1, p0, Lcom/perm/kate/chartview/ChartView;->mMaxX:D

    .line 222
    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/chartview/ChartView;->mMinY:D

    cmpg-double v0, p3, v0

    if-gez v0, :cond_2

    .line 223
    iput-wide p3, p0, Lcom/perm/kate/chartview/ChartView;->mMinY:D

    .line 226
    :cond_2
    iget-wide v0, p0, Lcom/perm/kate/chartview/ChartView;->mMaxY:D

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    .line 227
    iput-wide p3, p0, Lcom/perm/kate/chartview/ChartView;->mMaxY:D

    .line 230
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    iget-wide v2, p0, Lcom/perm/kate/chartview/ChartView;->mMinX:D

    iget-wide v4, p0, Lcom/perm/kate/chartview/ChartView;->mMinY:D

    iget-wide v6, p0, Lcom/perm/kate/chartview/ChartView;->mMaxX:D

    iget-wide v8, p0, Lcom/perm/kate/chartview/ChartView;->mMaxY:D

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/chartview/RectD;->set(DDDD)V

    .line 231
    return-void
.end method

.method private resetRange()V
    .locals 10

    .prologue
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v0, 0x1

    .line 205
    iput-wide v2, p0, Lcom/perm/kate/chartview/ChartView;->mMinX:D

    .line 206
    iput-wide v0, p0, Lcom/perm/kate/chartview/ChartView;->mMaxX:D

    .line 207
    iput-wide v2, p0, Lcom/perm/kate/chartview/ChartView;->mMinY:D

    .line 208
    iput-wide v0, p0, Lcom/perm/kate/chartview/ChartView;->mMaxY:D

    .line 210
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    iget-wide v2, p0, Lcom/perm/kate/chartview/ChartView;->mMinX:D

    iget-wide v4, p0, Lcom/perm/kate/chartview/ChartView;->mMinY:D

    iget-wide v6, p0, Lcom/perm/kate/chartview/ChartView;->mMaxX:D

    iget-wide v8, p0, Lcom/perm/kate/chartview/ChartView;->mMaxY:D

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/chartview/RectD;->set(DDDD)V

    .line 211
    return-void
.end method


# virtual methods
.method public addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V
    .locals 4
    .param p1, "series"    # Lcom/perm/kate/chartview/AbstractSeries;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mSeries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mSeries:Ljava/util/List;

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/perm/kate/chartview/AbstractSeries;->getMinX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/perm/kate/chartview/AbstractSeries;->getMinY()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/perm/kate/chartview/ChartView;->extendRange(DD)V

    .line 102
    invoke-virtual {p1}, Lcom/perm/kate/chartview/AbstractSeries;->getMaxX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/perm/kate/chartview/AbstractSeries;->getMaxY()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/perm/kate/chartview/ChartView;->extendRange(DD)V

    .line 103
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lcom/perm/kate/chartview/ChartView;->invalidate()V

    .line 105
    return-void
.end method

.method public clearSeries()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mSeries:Ljava/util/List;

    .line 91
    invoke-direct {p0}, Lcom/perm/kate/chartview/ChartView;->resetRange()V

    .line 92
    invoke-virtual {p0}, Lcom/perm/kate/chartview/ChartView;->invalidate()V

    .line 93
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 94
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 95
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/perm/kate/chartview/ChartView;->drawGrid(Landroid/graphics/Canvas;)V

    .line 197
    invoke-direct {p0}, Lcom/perm/kate/chartview/ChartView;->drawLabels()V

    .line 199
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mSeries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/chartview/AbstractSeries;

    .line 200
    .local v0, "series":Lcom/perm/kate/chartview/AbstractSeries;
    iget-object v2, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    invoke-virtual {v0, p1, v2, v3}, Lcom/perm/kate/chartview/AbstractSeries;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/perm/kate/chartview/RectD;)V

    goto :goto_0

    .line 202
    .end local v0    # "series":Lcom/perm/kate/chartview/AbstractSeries;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 169
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 171
    iget v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelWidth:I

    iget v7, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    add-int/2addr v6, v7

    add-int/lit8 v2, v6, -0x1

    .line 172
    .local v2, "gridLeft":I
    iget v6, p0, Lcom/perm/kate/chartview/ChartView;->mRightLabelWidth:I

    iget v7, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    add-int/2addr v6, v7

    add-int/lit8 v4, v6, -0x1

    .line 173
    .local v4, "gridTop":I
    invoke-virtual {p0}, Lcom/perm/kate/chartview/ChartView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/perm/kate/chartview/ChartView;->mRightLabelWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    sub-int v3, v6, v7

    .line 174
    .local v3, "gridRight":I
    invoke-virtual {p0}, Lcom/perm/kate/chartview/ChartView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelHeight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    sub-int v1, v6, v7

    .line 176
    .local v1, "gridBottom":I
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    .local v5, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 181
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    .local v0, "bottomParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 185
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4, v2, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 189
    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/perm/kate/chartview/ChartView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v2, v1, v3, v7}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 190
    return-void
.end method

.method public onOrientationChanged()V
    .locals 4

    .prologue
    .line 329
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 330
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 331
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/perm/kate/chartview/ChartView$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/chartview/ChartView$1;-><init>(Lcom/perm/kate/chartview/ChartView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    .end local v0    # "h":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public setBottomLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "adapter"    # Lcom/perm/kate/chartview/LabelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/chartview/LabelAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    .line 120
    iget v7, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    add-int/lit8 v0, v7, 0x2

    .line 121
    .local v0, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v6, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_5

    .line 123
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 124
    .local v3, "len":I
    if-le v3, v0, :cond_1

    .line 125
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-double v8, v7

    int-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 126
    .local v4, "step":I
    const/4 v2, 0x0

    .line 127
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 128
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 129
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    add-int/2addr v2, v4

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v4    # "step":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 135
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v0, :cond_4

    .line 139
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v3    # "len":I
    :cond_4
    iget-object v7, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    invoke-virtual {v7, v6}, Lcom/perm/kate/chartview/LabelAdapter;->setValues(Ljava/util/ArrayList;)V

    .line 147
    return-void

    .line 141
    .end local v1    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    invoke-virtual {v7}, Lcom/perm/kate/chartview/RectD;->width()D

    move-result-wide v8

    iget v7, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    add-int/lit8 v7, v7, 0x1

    int-to-double v10, v7

    div-double v4, v8, v10

    .line 142
    .local v4, "step":D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 143
    iget-object v7, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    iget-wide v8, v7, Lcom/perm/kate/chartview/RectD;->left:D

    int-to-double v10, v1

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    double-to-int v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public setGridLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineColor:I

    .line 151
    return-void
.end method

.method public setGridLineWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    .line 155
    return-void
.end method

.method public setGridLinesHorizontal(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 158
    if-gez p1, :cond_0

    .line 159
    const/4 p1, 0x0

    .line 160
    :cond_0
    iput p1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    .line 161
    return-void
.end method

.method public setGridLinesVertical(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    .line 165
    return-void
.end method

.method public setLeftLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;)V
    .locals 10
    .param p1, "adapter"    # Lcom/perm/kate/chartview/LabelAdapter;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    .line 109
    iget v5, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    add-int/lit8 v0, v5, 0x2

    .line 110
    .local v0, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    invoke-virtual {v5}, Lcom/perm/kate/chartview/RectD;->height()D

    move-result-wide v6

    iget v5, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    add-int/lit8 v5, v5, 0x1

    int-to-double v8, v5

    div-double v2, v6, v8

    .line 112
    .local v2, "step":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 113
    iget-object v5, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    iget-wide v6, v5, Lcom/perm/kate/chartview/RectD;->top:D

    int-to-double v8, v1

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object v5, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    invoke-virtual {v5, v4}, Lcom/perm/kate/chartview/LabelAdapter;->setValues(Ljava/util/ArrayList;)V

    .line 116
    return-void
.end method
