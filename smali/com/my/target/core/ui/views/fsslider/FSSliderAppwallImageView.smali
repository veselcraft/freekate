.class public Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;
.super Landroid/widget/FrameLayout;
.source "FSSliderAppwallImageView.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/my/target/core/utils/l;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/RelativeLayout;

.field private final f:Landroid/widget/FrameLayout$LayoutParams;

.field private g:Lcom/my/target/core/ui/views/BorderedTextView;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    const/4 v2, -0x1

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->c:Lcom/my/target/core/utils/l;

    .line 62
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->e:Landroid/widget/RelativeLayout;

    .line 64
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->d:Landroid/widget/ImageView;

    .line 65
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->c:Lcom/my/target/core/utils/l;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->a:I

    .line 73
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->c:Lcom/my/target/core/utils/l;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->b:I

    .line 75
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->f:Landroid/widget/FrameLayout$LayoutParams;

    .line 77
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->f:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->f:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->setClipToPadding(Z)V

    .line 85
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->c:Lcom/my/target/core/utils/l;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setElevation(F)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 92
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 93
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 100
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 102
    iget v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->h:I

    if-lez v1, :cond_0

    .line 104
    int-to-float v1, v0

    iget v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->i:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->i:I

    .line 105
    iput v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->h:I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->f:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->h:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 109
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->f:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->i:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 111
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->f:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 114
    return-void
.end method

.method public setAgeRestrictions(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v4, -0x2

    const v6, -0x111112

    const/4 v3, 0x0

    .line 118
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    .line 123
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    const v1, -0x777778

    invoke-virtual {v0, v7, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 124
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->c:Lcom/my/target/core/utils/l;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/my/target/core/ui/views/BorderedTextView;->setPadding(IIII)V

    .line 126
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->c:Lcom/my/target/core/utils/l;

    invoke-virtual {v1, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->c:Lcom/my/target/core/utils/l;

    const/16 v3, 0x14

    .line 130
    invoke-virtual {v2, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->c:Lcom/my/target/core/utils/l;

    .line 131
    invoke-virtual {v3, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->c:Lcom/my/target/core/utils/l;

    const/16 v5, 0x14

    .line 132
    invoke-virtual {v4, v5}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    .line 129
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 133
    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/BorderedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v6}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 136
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->c:Lcom/my/target/core/utils/l;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    invoke-virtual {v0, v7, v6, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(III)V

    .line 137
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBackgroundColor(I)V

    .line 138
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 40
    iget v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->a:I

    iget v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->a:I

    iget v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->a:I

    iget v3, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->a:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->setPadding(IIII)V

    .line 52
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->h:I

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->i:I

    .line 54
    return-void

    .line 46
    :cond_0
    iget v0, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->b:I

    iget v1, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->b:I

    iget v2, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->b:I

    iget v3, p0, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->b:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/my/target/core/ui/views/fsslider/FSSliderAppwallImageView;->setPadding(IIII)V

    goto :goto_0
.end method
