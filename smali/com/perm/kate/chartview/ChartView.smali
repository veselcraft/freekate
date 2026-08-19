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

.field private mValueBounds:Lcom/perm/kate/chartview/RectD;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/perm/kate/chartview/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/chartview/ChartView;->mPaint:Landroid/graphics/Paint;

    .line 24
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/chartview/ChartView;->mSeries:Ljava/util/List;

    .line 36
    new-instance p2, Lcom/perm/kate/chartview/RectD;

    invoke-direct {p2}, Lcom/perm/kate/chartview/RectD;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    const-wide p2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 37
    iput-wide p2, p0, Lcom/perm/kate/chartview/ChartView;->mMinX:D

    const-wide/16 v0, 0x1

    .line 38
    iput-wide v0, p0, Lcom/perm/kate/chartview/ChartView;->mMaxX:D

    .line 39
    iput-wide p2, p0, Lcom/perm/kate/chartview/ChartView;->mMinY:D

    .line 40
    iput-wide v0, p0, Lcom/perm/kate/chartview/ChartView;->mMaxY:D

    .line 42
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 61
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 63
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getTextColorByTheme(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineColor:I

    const/4 p3, 0x1

    .line 64
    iput p3, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    const/16 v0, 0x9

    .line 65
    iput v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    const/4 v0, 0x5

    .line 66
    iput v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 67
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelWidth:I

    const-wide v0, 0x4051800000000000L    # 70.0

    .line 68
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelHeight:I

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 69
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/chartview/ChartView;->mRightLabelWidth:I

    .line 72
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelWidth:I

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelHeight:I

    invoke-direct {p3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 78
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    .line 81
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object p1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    iget-object p1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object p1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/chartview/ChartView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/chartview/ChartView;)Lcom/perm/kate/chartview/LabelAdapter;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/chartview/ChartView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/chartview/ChartView;->drawBottomLabels()V

    return-void
.end method

.method private drawBottomLabels()V
    .locals 7

    .line 298
    iget v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 300
    iget-object v3, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 303
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v2, :cond_1

    add-int/lit8 v5, v0, -0x1

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 307
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_1
    :goto_1
    const/high16 v5, 0x3f000000    # 0.5f

    .line 305
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 310
    :goto_2
    iget-object v5, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v3, v6}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 311
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v4, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 315
    :cond_2
    iget-object v4, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    iget-object v5, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3, v5}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_4
    if-ge v0, v1, :cond_5

    .line 322
    iget-object v2, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 324
    iget-object v3, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;)V
    .locals 14

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

    div-float/2addr v0, v1

    .line 239
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 241
    iget-object v2, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    .line 242
    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v11, v4

    .line 243
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    .line 244
    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 246
    :goto_0
    iget v5, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    add-int/lit8 v5, v5, 0x2

    if-ge v13, v5, :cond_0

    int-to-float v5, v13

    mul-float v5, v5, v0

    add-float v8, v3, v5

    .line 247
    iget-object v10, p0, Lcom/perm/kate/chartview/ChartView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v8

    move v7, v11

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 250
    :cond_0
    :goto_1
    iget v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    add-int/lit8 v0, v0, 0x2

    if-ge v12, v0, :cond_1

    int-to-float v0, v12

    mul-float v0, v0, v1

    add-float v8, v11, v0

    .line 251
    iget-object v9, p0, Lcom/perm/kate/chartview/ChartView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v6, v8

    move v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawLabels()V
    .locals 1

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

    :cond_1
    return-void
.end method

.method private drawLeftLabels()V
    .locals 8

    .line 265
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/chartview/LabelAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 267
    iget-object v3, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    .line 270
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-eqz v2, :cond_1

    add-int/lit8 v5, v0, -0x1

    if-ne v2, v5, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 274
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_1
    :goto_1
    const/high16 v5, 0x3f000000    # 0.5f

    .line 272
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 277
    :goto_2
    iget-object v5, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v2

    iget-object v7, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v3, v7}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 278
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v4, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 282
    :cond_2
    iget-object v4, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    add-int/lit8 v5, v0, -0x1

    sub-int/2addr v5, v2

    iget-object v6, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v3, v6}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_4
    if-ge v0, v1, :cond_5

    .line 289
    iget-object v2, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 291
    iget-object v3, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private extendRange(DD)V
    .locals 10

    .line 214
    iget-wide v0, p0, Lcom/perm/kate/chartview/ChartView;->mMinX:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 215
    iput-wide p1, p0, Lcom/perm/kate/chartview/ChartView;->mMinX:D

    .line 218
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/chartview/ChartView;->mMaxX:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    .line 219
    iput-wide p1, p0, Lcom/perm/kate/chartview/ChartView;->mMaxX:D

    .line 222
    :cond_1
    iget-wide p1, p0, Lcom/perm/kate/chartview/ChartView;->mMinY:D

    cmpg-double v0, p3, p1

    if-gez v0, :cond_2

    .line 223
    iput-wide p3, p0, Lcom/perm/kate/chartview/ChartView;->mMinY:D

    .line 226
    :cond_2
    iget-wide p1, p0, Lcom/perm/kate/chartview/ChartView;->mMaxY:D

    cmpl-double v0, p3, p1

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

    return-void
.end method

.method private resetRange()V
    .locals 9

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 205
    iput-wide v1, p0, Lcom/perm/kate/chartview/ChartView;->mMinX:D

    const-wide/16 v5, 0x1

    .line 206
    iput-wide v5, p0, Lcom/perm/kate/chartview/ChartView;->mMaxX:D

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 207
    iput-wide v3, p0, Lcom/perm/kate/chartview/ChartView;->mMinY:D

    const-wide/16 v7, 0x1

    .line 208
    iput-wide v7, p0, Lcom/perm/kate/chartview/ChartView;->mMaxY:D

    .line 210
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/chartview/RectD;->set(DDDD)V

    return-void
.end method


# virtual methods
.method public addSeries(Lcom/perm/kate/chartview/AbstractSeries;)V
    .locals 4

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
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public clearSeries()V
    .locals 1

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mSeries:Ljava/util/List;

    .line 91
    invoke-direct {p0}, Lcom/perm/kate/chartview/ChartView;->resetRange()V

    .line 92
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 93
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 94
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 194
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/perm/kate/chartview/ChartView;->drawGrid(Landroid/graphics/Canvas;)V

    .line 197
    invoke-direct {p0}, Lcom/perm/kate/chartview/ChartView;->drawLabels()V

    .line 199
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/chartview/AbstractSeries;

    .line 200
    iget-object v2, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    invoke-virtual {v1, p1, v2, v3}, Lcom/perm/kate/chartview/AbstractSeries;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Lcom/perm/kate/chartview/RectD;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 169
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 171
    iget p1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelWidth:I

    iget p2, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 172
    iget p3, p0, Lcom/perm/kate/chartview/ChartView;->mRightLabelWidth:I

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    .line 173
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    iget p4, p0, Lcom/perm/kate/chartview/ChartView;->mRightLabelWidth:I

    sub-int/2addr p2, p4

    iget p4, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    sub-int/2addr p2, p4

    .line 174
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p4

    iget p5, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelHeight:I

    sub-int/2addr p4, p5

    iget p5, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    sub-int/2addr p4, p5

    .line 176
    iget-object p5, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    invoke-virtual {p5, p1, p3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    iget-object p5, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 181
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object p5, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mGridBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 185
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object p5, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p5, v0, p3, p1, p4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 189
    iget-object p3, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p5

    invoke-virtual {p3, p1, p4, p2, p5}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method public onOrientationChanged()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 331
    new-instance v1, Lcom/perm/kate/chartview/ChartView$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/chartview/ChartView$1;-><init>(Lcom/perm/kate/chartview/ChartView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setBottomLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;Ljava/util/ArrayList;)V
    .locals 8

    .line 119
    iput-object p1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    .line 120
    iget p1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    add-int/lit8 p1, p1, 0x2

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 123
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 125
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 128
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 129
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_3

    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 135
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p2, p1, :cond_5

    const-string p1, ""

    .line 139
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 141
    :cond_4
    iget-object p2, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    invoke-virtual {p2}, Lcom/perm/kate/chartview/RectD;->width()D

    move-result-wide v2

    iget p2, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    add-int/lit8 p2, p2, 0x1

    int-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    :goto_2
    if-ge v1, p1, :cond_5

    .line 143
    iget-object p2, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    iget-wide v4, p2, Lcom/perm/kate/chartview/RectD;->left:D

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    add-double/2addr v4, v6

    double-to-int p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 146
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/perm/kate/chartview/ChartView;->mBottomLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    invoke-virtual {p1, v0}, Lcom/perm/kate/chartview/LabelAdapter;->setValues(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setGridLineColor(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineColor:I

    return-void
.end method

.method public setGridLineWidth(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLineWidth:I

    return-void
.end method

.method public setGridLinesHorizontal(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 160
    :cond_0
    iput p1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesHorizontal:I

    return-void
.end method

.method public setGridLinesVertical(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    return-void
.end method

.method public setLeftLabelAdapter(Lcom/perm/kate/chartview/LabelAdapter;)V
    .locals 8

    .line 108
    iput-object p1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    .line 109
    iget p1, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    add-int/lit8 p1, p1, 0x2

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    invoke-virtual {v1}, Lcom/perm/kate/chartview/RectD;->height()D

    move-result-wide v1

    iget v3, p0, Lcom/perm/kate/chartview/ChartView;->mGridLinesVertical:I

    add-int/lit8 v3, v3, 0x1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 113
    iget-object v4, p0, Lcom/perm/kate/chartview/ChartView;->mValueBounds:Lcom/perm/kate/chartview/RectD;

    iget-wide v4, v4, Lcom/perm/kate/chartview/RectD;->top:D

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v1

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/chartview/ChartView;->mLeftLabelAdapter:Lcom/perm/kate/chartview/LabelAdapter;

    invoke-virtual {p1, v0}, Lcom/perm/kate/chartview/LabelAdapter;->setValues(Ljava/util/ArrayList;)V

    return-void
.end method
