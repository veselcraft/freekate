.class public Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;
.super Landroid/widget/RelativeLayout;
.source "FSPromoMediaView.java"


# instance fields
.field private final a:Lcom/my/target/core/ui/views/CacheImageView;

.field private final b:Lcom/my/target/core/utils/l;

.field private final c:Z

.field private final d:Lcom/my/target/core/ui/views/controls/IconButton;

.field private e:Lcom/my/target/core/ui/views/video/VideoTextureView;

.field private f:F

.field private g:Lcom/my/target/nativeads/models/VideoData;

.field private h:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

.field private final i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/my/target/core/utils/l;Z)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView$1;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->i:Landroid/view/View$OnClickListener;

    .line 60
    iput-object p2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->b:Lcom/my/target/core/utils/l;

    .line 61
    iput-boolean p3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->c:Z

    .line 63
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    .line 64
    new-instance v0, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 66
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/video/VideoTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    .line 68
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;)Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 156
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    const-string v1, "fsmpb"

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setAdjustViewBounds(Z)V

    .line 162
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 168
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->addView(Landroid/view/View;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->addView(Landroid/view/View;)V

    .line 174
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->j()V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    if-nez p1, :cond_2

    .line 293
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->g()V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->h()V

    goto :goto_0
.end method

.method final a(Lcom/my/target/core/models/banners/g;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 73
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 78
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->m()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x168

    .line 77
    invoke-static {v0, v1}, Lcom/my/target/core/utils/n;->a(Ljava/util/List;I)Lcom/my/target/nativeads/models/VideoData;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->g:Lcom/my/target/nativeads/models/VideoData;

    .line 81
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->g:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/VideoData;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 82
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->g:Lcom/my/target/nativeads/models/VideoData;

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/VideoData;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 83
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 85
    div-float/2addr v0, v1

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->f:F

    .line 86
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->requestLayout()V

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->j()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->l()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->c()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 115
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 152
    :cond_2
    :goto_1
    return-void

    .line 96
    :cond_3
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 119
    :cond_4
    iget-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->c:Z

    if-eqz v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->b:Lcom/my/target/core/utils/l;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    .line 127
    :goto_2
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-static {v0}, Lcom/my/target/core/resources/a;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->b:Lcom/my/target/core/utils/l;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    goto :goto_2

    .line 132
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/controls/IconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 135
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/controls/IconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_7
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 141
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 142
    cmpl-float v2, v1, v2

    if-eqz v2, :cond_8

    .line 144
    div-float/2addr v0, v1

    iput v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->f:F

    .line 145
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->requestLayout()V

    .line 148
    :cond_8
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getImage()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/CacheImageView;->setClickable(Z)V

    goto/16 :goto_1
.end method

.method final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a()V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 217
    if-eqz p1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {p0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/controls/IconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/controls/IconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 182
    :cond_0
    return-void
.end method

.method final c()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 229
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->g:Lcom/my/target/nativeads/models/VideoData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->g:Lcom/my/target/nativeads/models/VideoData;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/nativeads/models/VideoData;Z)V

    .line 236
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    .line 249
    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 248
    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    .line 255
    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->e()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 254
    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->g:Lcom/my/target/nativeads/models/VideoData;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Lcom/my/target/nativeads/models/VideoData;Z)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 265
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->a(Z)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 274
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 188
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 194
    iget v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->f:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 196
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/CacheImageView;->getMeasuredHeight()I

    move-result v1

    .line 197
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/CacheImageView;->getMeasuredWidth()I

    move-result v0

    .line 205
    :goto_0
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 206
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 207
    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 208
    return-void

    .line 201
    :cond_0
    int-to-float v2, v0

    iget v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->f:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method public setOnMediaClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V
    .locals 2

    .prologue
    .line 240
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    .line 241
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a:Lcom/my/target/core/ui/views/CacheImageView;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/CacheImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d:Lcom/my/target/core/ui/views/controls/IconButton;

    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method public setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e:Lcom/my/target/core/ui/views/video/VideoTextureView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/video/VideoTextureView;->setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V

    .line 282
    :cond_0
    return-void
.end method
