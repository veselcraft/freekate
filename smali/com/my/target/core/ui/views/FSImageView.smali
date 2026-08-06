.class public Lcom/my/target/core/ui/views/FSImageView;
.super Landroid/widget/RelativeLayout;
.source "FSImageView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcom/my/target/core/ui/views/controls/IconButton;

.field private d:Landroid/widget/RelativeLayout$LayoutParams;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/RelativeLayout$LayoutParams;

.field private g:Lcom/my/target/core/ui/views/BorderedTextView;

.field private h:Landroid/widget/RelativeLayout$LayoutParams;

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x100

    const/4 v4, -0x2

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput v5, p0, Lcom/my/target/core/ui/views/FSImageView;->i:I

    .line 71
    invoke-virtual {p0, v6}, Lcom/my/target/core/ui/views/FSImageView;->setBackgroundColor(I)V

    .line 73
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/FSImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->e:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->f:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/FSImageView;->f:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/FSImageView;->addView(Landroid/view/View;)V

    .line 81
    new-instance v0, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->c:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 82
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->c:Lcom/my/target/core/ui/views/controls/IconButton;

    const/4 v1, 0x1

    const/high16 v2, 0x41e00000    # 28.0f

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 82
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Lcom/my/target/core/resources/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 85
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 88
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 89
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->c:Lcom/my/target/core/ui/views/controls/IconButton;

    iget-object v1, p0, Lcom/my/target/core/ui/views/FSImageView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->c:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/FSImageView;->addView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method private a(I)I
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/FSImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/my/target/core/ui/views/controls/IconButton;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->c:Lcom/my/target/core/ui/views/controls/IconButton;

    return-object v0
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/FSImageView;->requestLayout()V

    .line 139
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 180
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1143
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1146
    :cond_0
    int-to-float v0, v3

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 1147
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->b:Landroid/graphics/Bitmap;

    .line 1149
    :goto_0
    if-nez v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->b:Landroid/graphics/Bitmap;

    .line 1154
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1155
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1157
    if-gt v2, v3, :cond_2

    if-le v1, v4, :cond_3

    .line 1159
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float v3, v5, v3

    .line 1160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    int-to-float v4, v4

    div-float v4, v5, v4

    .line 1159
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1162
    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 1163
    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 1166
    :cond_3
    iget-object v3, p0, Lcom/my/target/core/ui/views/FSImageView;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1167
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->f:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1168
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->f:Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 184
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 185
    return-void

    .line 1147
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1151
    :cond_6
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->a:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public setAgeRestrictions(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x1

    const/4 v4, -0x2

    const v3, -0x111112

    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/FSImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    .line 117
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    const v1, -0x777778

    invoke-virtual {v0, v5, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(II)V

    .line 118
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/my/target/core/ui/views/FSImageView;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/my/target/core/ui/views/BorderedTextView;->setPadding(IIII)V

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->h:Landroid/widget/RelativeLayout$LayoutParams;

    .line 121
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->h:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/FSImageView;->h:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/my/target/core/ui/views/FSImageView;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 122
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->h:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->h:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/FSImageView;->h:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, v3}, Lcom/my/target/core/ui/views/BorderedTextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/my/target/core/ui/views/FSImageView;->a(I)I

    move-result v1

    invoke-virtual {v0, v5, v3, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBorder(III)V

    .line 128
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/BorderedTextView;->setBackgroundColor(I)V

    .line 129
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/FSImageView;->addView(Landroid/view/View;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->g:Lcom/my/target/core/ui/views/BorderedTextView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/BorderedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public setImages(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 99
    iput-object p1, p0, Lcom/my/target/core/ui/views/FSImageView;->b:Landroid/graphics/Bitmap;

    .line 100
    iput-object p2, p0, Lcom/my/target/core/ui/views/FSImageView;->a:Landroid/graphics/Bitmap;

    .line 102
    if-eqz p3, :cond_0

    .line 104
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->c:Lcom/my/target/core/ui/views/controls/IconButton;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 105
    iget-object v0, p0, Lcom/my/target/core/ui/views/FSImageView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/my/target/core/ui/views/FSImageView;->d:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/core/ui/views/FSImageView;->c:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v2}, Lcom/my/target/core/ui/views/controls/IconButton;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/FSImageView;->requestLayout()V

    .line 108
    return-void
.end method
