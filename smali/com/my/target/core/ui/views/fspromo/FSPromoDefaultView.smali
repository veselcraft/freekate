.class public Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;
.super Lcom/my/target/core/ui/views/fspromo/FSPromoView;
.source "FSPromoDefaultView.java"


# static fields
.field private static final c:I

.field private static final d:I

.field private static final e:I


# instance fields
.field private final f:Lcom/my/target/core/ui/views/CacheImageView;

.field private final g:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

.field private final h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

.field private final i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

.field private final j:Lcom/my/target/core/ui/views/controls/IconButton;

.field private final k:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

.field private final l:Lcom/my/target/core/utils/l;

.field private final m:Z

.field private final n:Lcom/my/target/core/ui/views/controls/IconButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->c:I

    .line 24
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->d:I

    .line 25
    invoke-static {}, Lcom/my/target/core/utils/l;->a()I

    move-result v0

    sput v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 278
    invoke-direct {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-lt v0, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->m:Z

    .line 283
    new-instance v0, Lcom/my/target/core/utils/l;

    invoke-direct {v0, p1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    .line 285
    new-instance v0, Lcom/my/target/core/ui/views/CacheImageView;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/CacheImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/CacheImageView;

    .line 286
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/CacheImageView;

    const-string v2, "fsic"

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    iget-boolean v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->m:Z

    invoke-direct {v0, p1, v2, v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;-><init>(Landroid/content/Context;Lcom/my/target/core/utils/l;Z)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    .line 289
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->d:I

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->setId(I)V

    .line 290
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    iget-boolean v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->m:Z

    invoke-direct {v0, p1, v2, v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;-><init>(Landroid/content/Context;Lcom/my/target/core/utils/l;Z)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    .line 291
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->c:I

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setId(I)V

    .line 293
    new-instance v0, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 294
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    const-string v2, "fscl"

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v0, Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    invoke-direct {v0, p1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    .line 297
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 299
    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->c:I

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 301
    new-instance v2, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    invoke-direct {v2, p1, v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;-><init>(Landroid/content/Context;Lcom/my/target/core/utils/l;)V

    iput-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    .line 302
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 304
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 305
    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v3, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:I

    invoke-virtual {v2, v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setId(I)V

    .line 308
    new-instance v2, Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-direct {v2, p1}, Lcom/my/target/core/ui/views/controls/IconButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    .line 309
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    sget v3, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->a:I

    invoke-virtual {v2, v3}, Lcom/my/target/core/ui/views/controls/IconButton;->setId(I)V

    .line 311
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {p0, v2, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;I)V

    .line 312
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p0, v2, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;I)V

    .line 313
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    invoke-virtual {p0, v2, v1, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;)V

    .line 317
    return-void

    :cond_0
    move v0, v1

    .line 279
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)Lcom/my/target/core/ui/views/controls/IconButton;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    return-object v0
.end method

.method static synthetic b(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->a(Z)V

    .line 142
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->b()V

    .line 143
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(I)V

    .line 226
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c([Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Z)V

    .line 179
    return-void
.end method

.method protected final b(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, -0x2

    .line 231
    invoke-super {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b(I)V

    .line 232
    if-ne p1, v5, :cond_1

    .line 234
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 238
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    const/4 v1, 0x2

    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 242
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    new-array v1, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c([Landroid/view/View;)V

    .line 274
    :goto_1
    return-void

    .line 245
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v0, v4}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$2;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)V

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->post(Ljava/lang/Runnable;)Z

    .line 263
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 266
    const/4 v1, 0x2

    sget v2, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 267
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    :goto_2
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 270
    :cond_3
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->e()Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/my/target/core/ui/views/controls/IconButton;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    return-object v0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b([Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->c()V

    .line 160
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->b([Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->f()V

    .line 166
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 201
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->d()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->c([Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->g()V

    .line 220
    return-void
.end method

.method public setBanner(Lcom/my/target/core/models/banners/g;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0x1c

    const/16 v8, 0x8

    const/4 v1, 0x0

    const/4 v6, -0x2

    .line 38
    invoke-super {p0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setBanner(Lcom/my/target/core/models/banners/g;)V

    .line 39
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    invoke-virtual {v0, v8}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setVisibility(I)V

    .line 40
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    .line 41
    invoke-virtual {v2, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iget-object v4, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    .line 42
    invoke-virtual {v4, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 45
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 46
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v2, v8}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 53
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v2

    if-nez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->n:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v2, v8}, Lcom/my/target/core/ui/views/controls/IconButton;->setVisibility(I)V

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/controls/IconButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/controls/IconButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->addView(Landroid/view/View;)V

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 65
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2, v5}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a(II)V

    .line 69
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setBanner(Lcom/my/target/core/models/banners/g;)V

    .line 71
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2, v5}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->a(II)V

    .line 72
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->setBanner(Lcom/my/target/core/models/banners/g;)V

    .line 74
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a()V

    .line 75
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->a(Lcom/my/target/core/models/banners/g;)V

    .line 77
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->b()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->b()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 79
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->b()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    .line 88
    :goto_0
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 90
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getWidth()I

    move-result v2

    .line 91
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getHeight()I

    move-result v0

    .line 94
    :goto_1
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    iget-object v6, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 98
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 100
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 102
    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    const/16 v6, 0x40

    invoke-virtual {v2, v6}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    .line 103
    iget-object v6, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 105
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 106
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 108
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v2, v4

    const/16 v4, 0x500

    if-ge v2, v4, :cond_3

    move v1, v3

    .line 109
    :cond_3
    if-nez v1, :cond_4

    .line 110
    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 113
    :cond_4
    sget v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->c:I

    invoke-virtual {v5, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 114
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 118
    :goto_2
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {v0, v5}, Lcom/my/target/core/ui/views/CacheImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->f:Lcom/my/target/core/ui/views/CacheImageView;

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->getIcon()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/nativeads/models/ImageData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->c()V

    .line 125
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$1;-><init>(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)V

    invoke-virtual {p0, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->post(Ljava/lang/Runnable;)Z

    .line 134
    :cond_5
    return-void

    .line 82
    :cond_6
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    iget-object v2, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    invoke-virtual {v2, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v2

    invoke-static {v2}, Lcom/my/target/core/resources/a;->a(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 82
    invoke-virtual {v0, v2, v5}, Lcom/my/target/core/ui/views/controls/IconButton;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->l:Lcom/my/target/core/utils/l;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_8
    move v0, v1

    move v2, v1

    goto/16 :goto_1
.end method

.method public setCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->j:Lcom/my/target/core/ui/views/controls/IconButton;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method public setOnCTAClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->g:Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoVerticalView;->setOnCTAClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->i:Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->setOnCTAClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method

.method public setOnVideoClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setOnMediaClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V

    .line 190
    return-void
.end method

.method public setTimeChanged(F)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setVisibility(I)V

    .line 206
    iget v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->b:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setProgress(F)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->k:Lcom/my/target/core/ui/views/video/VideoProgressWheel;

    iget v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->b:F

    sub-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/video/VideoProgressWheel;->setDigit(I)V

    .line 209
    return-void
.end method

.method public setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->h:Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/fspromo/FSPromoMediaView;->setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V

    .line 322
    return-void
.end method
