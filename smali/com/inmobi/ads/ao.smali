.class Lcom/inmobi/ads/ao;
.super Landroid/widget/FrameLayout;
.source "ScrollableDeckPagesContainer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ao$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;

.field private e:Z

.field private f:Lcom/inmobi/ads/ao$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ao;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ao;->c:Landroid/graphics/Point;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ao;->d:Landroid/graphics/Point;

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ao;->setClipChildren(Z)V

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 67
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ao;->setLayerType(ILandroid/graphics/Paint;)V

    .line 70
    :cond_0
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/inmobi/ads/ao;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    .line 71
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ao;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method private a(FF)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v1, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 166
    iget-object v2, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 167
    iget-object v3, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 168
    invoke-virtual {p0}, Lcom/inmobi/ads/ao;->getWidth()I

    move-result v4

    .line 174
    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v1, :cond_3

    .line 175
    :cond_0
    sub-int v2, v4, v3

    .line 177
    if-nez v1, :cond_2

    .line 178
    int-to-float v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    int-to-float v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 179
    int-to-float v0, v2

    sub-float v0, p2, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 199
    :cond_1
    :goto_0
    return v0

    .line 183
    :cond_2
    int-to-float v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    int-to-float v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 184
    int-to-float v0, v2

    sub-float/2addr v0, p2

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    .line 189
    :cond_3
    sub-int v1, v4, v3

    div-int/lit8 v1, v1, 0x2

    .line 191
    int-to-float v2, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_4

    int-to-float v2, v1

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    .line 192
    int-to-float v0, v1

    sub-float/2addr v0, p2

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    .line 194
    :cond_4
    add-int v1, v4, v3

    div-int/lit8 v1, v1, 0x2

    .line 195
    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    int-to-float v2, v1

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 196
    int-to-float v0, v1

    sub-float v0, p2, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/ao;->f:Lcom/inmobi/ads/ao$a;

    .line 77
    return-void
.end method

.method public a(Lcom/inmobi/ads/v;Lcom/inmobi/ads/y;IILcom/inmobi/ads/ao$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x14

    .line 89
    .line 90
    invoke-virtual {p1, v4}, Lcom/inmobi/ads/v;->a(I)Lcom/inmobi/ads/NativeStrandAsset;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/NativeStrandAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 92
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 97
    :goto_0
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 98
    iget-object v1, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 102
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 103
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 105
    iput-object p5, p0, Lcom/inmobi/ads/ao;->f:Lcom/inmobi/ads/ao$a;

    .line 106
    return-void

    .line 95
    :cond_0
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 161
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/ads/ao;->e:Z

    .line 162
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/inmobi/ads/ao;->e:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/inmobi/ads/ao;->invalidate()V

    .line 145
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    .line 149
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ao;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Page Selected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    .line 151
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 152
    iget-object v1, p0, Lcom/inmobi/ads/ao;->f:Lcom/inmobi/ads/ao$a;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/inmobi/ads/ao;->f:Lcom/inmobi/ads/ao$a;

    invoke-interface {v1, p1}, Lcom/inmobi/ads/ao$a;->a(I)I

    move-result v1

    .line 154
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 155
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 157
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/inmobi/ads/ao;->c:Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 111
    iget-object v0, p0, Lcom/inmobi/ads/ao;->c:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 112
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/ao;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/inmobi/ads/ao;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/ads/ao;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/inmobi/ads/ao;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/ads/ao;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/ao;->a(FF)I

    move-result v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 123
    iget-object v1, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/inmobi/ads/ao;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ao;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/inmobi/ads/ao;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/ads/ao;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/inmobi/ads/ao;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 128
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/ads/ao;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 129
    iget-object v0, p0, Lcom/inmobi/ads/ao;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
