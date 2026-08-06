.class public final Lcom/my/target/core/engines/i;
.super Lcom/my/target/core/engines/a;
.source "StandardNativeEngine.java"

# interfaces
.implements Lcom/my/target/core/ui/views/StandardNativeView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/engines/i$a;
    }
.end annotation


# static fields
.field private static c:Landroid/os/Handler;


# instance fields
.field private A:Z

.field private B:I

.field private final d:Lcom/my/target/core/ui/views/AdView;

.field private final e:Lcom/my/target/ads/MyTargetView;

.field private final f:[Landroid/widget/ViewFlipper;

.field private final g:Landroid/widget/ViewFlipper;

.field private final h:[Lcom/my/target/core/facades/h;

.field private final i:Lcom/my/target/core/engines/i$a;

.field private final j:Lcom/my/target/core/net/b$a;

.field private final k:Landroid/view/animation/Animation$AnimationListener;

.field private final l:Ljava/lang/Runnable;

.field private final m:Lcom/my/target/core/net/b$a;

.field private final n:Lcom/my/target/core/facades/h$a;

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:J

.field private r:J

.field private s:I

.field private t:Lcom/my/target/core/models/j;

.field private u:Lcom/my/target/core/ui/views/controls/AdInfoButton;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/j;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/j;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/my/target/core/models/banners/j;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/my/target/ads/MyTargetView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 376
    invoke-direct {p0, p1, p3}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/my/target/core/engines/i$a;

    invoke-direct {v0, v5}, Lcom/my/target/core/engines/i$a;-><init>(B)V

    iput-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    .line 60
    new-instance v0, Lcom/my/target/core/engines/i$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/i$1;-><init>(Lcom/my/target/core/engines/i;)V

    iput-object v0, p0, Lcom/my/target/core/engines/i;->j:Lcom/my/target/core/net/b$a;

    .line 73
    new-instance v0, Lcom/my/target/core/engines/i$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/i$2;-><init>(Lcom/my/target/core/engines/i;)V

    iput-object v0, p0, Lcom/my/target/core/engines/i;->k:Landroid/view/animation/Animation$AnimationListener;

    .line 112
    new-instance v0, Lcom/my/target/core/engines/i$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/i$3;-><init>(Lcom/my/target/core/engines/i;)V

    iput-object v0, p0, Lcom/my/target/core/engines/i;->l:Ljava/lang/Runnable;

    .line 128
    new-instance v0, Lcom/my/target/core/engines/i$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/i$4;-><init>(Lcom/my/target/core/engines/i;)V

    iput-object v0, p0, Lcom/my/target/core/engines/i;->m:Lcom/my/target/core/net/b$a;

    .line 144
    new-instance v0, Lcom/my/target/core/engines/i$5;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/i$5;-><init>(Lcom/my/target/core/engines/i;)V

    iput-object v0, p0, Lcom/my/target/core/engines/i;->n:Lcom/my/target/core/facades/h$a;

    .line 377
    iput-object p1, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    .line 378
    iput-object p2, p0, Lcom/my/target/core/engines/i;->o:Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/engines/i;->v:Ljava/util/ArrayList;

    .line 380
    new-instance v0, Lcom/my/target/core/ui/views/AdView;

    invoke-direct {v0, p3}, Lcom/my/target/core/ui/views/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/i;->d:Lcom/my/target/core/ui/views/AdView;

    .line 381
    new-instance v0, Landroid/widget/ViewFlipper;

    invoke-direct {v0, p3}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/i;->g:Landroid/widget/ViewFlipper;

    .line 382
    new-array v0, v2, [Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/my/target/core/engines/i;->f:[Landroid/widget/ViewFlipper;

    .line 383
    iget-object v0, p0, Lcom/my/target/core/engines/i;->f:[Landroid/widget/ViewFlipper;

    new-instance v1, Landroid/widget/ViewFlipper;

    invoke-direct {v1, p3}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v5

    .line 384
    iget-object v0, p0, Lcom/my/target/core/engines/i;->f:[Landroid/widget/ViewFlipper;

    new-instance v1, Landroid/widget/ViewFlipper;

    invoke-direct {v1, p3}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v6

    .line 385
    new-array v0, v2, [Lcom/my/target/core/facades/h;

    iput-object v0, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    .line 2400
    new-instance v0, Lcom/my/target/core/utils/l;

    iget-object v1, p0, Lcom/my/target/core/engines/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    .line 2401
    const-string v1, "standard_728x90"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2403
    invoke-virtual {v0, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, p0, Lcom/my/target/core/engines/i;->s:I

    .line 2409
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2411
    iget-object v2, p0, Lcom/my/target/core/engines/i;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2413
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2417
    const-string v2, "standard_728x90"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2419
    iget-object v2, p0, Lcom/my/target/core/engines/i;->d:Lcom/my/target/core/ui/views/AdView;

    const/16 v3, 0x2d8

    invoke-virtual {v0, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    invoke-virtual {v0, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/my/target/core/ui/views/AdView;->setFixedSize(II)V

    .line 2426
    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/my/target/core/engines/i;->s:I

    invoke-direct {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2428
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2429
    iget-object v2, p0, Lcom/my/target/core/engines/i;->d:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2431
    iget-object v0, p0, Lcom/my/target/core/engines/i;->g:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/my/target/core/engines/i;->f:[Landroid/widget/ViewFlipper;

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 2432
    iget-object v0, p0, Lcom/my/target/core/engines/i;->g:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/my/target/core/engines/i;->f:[Landroid/widget/ViewFlipper;

    aget-object v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 2434
    iget-object v0, p0, Lcom/my/target/core/engines/i;->d:Lcom/my/target/core/ui/views/AdView;

    iget-object v2, p0, Lcom/my/target/core/engines/i;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2, v1}, Lcom/my/target/core/ui/views/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2436
    iget-object v0, p0, Lcom/my/target/core/engines/i;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/my/target/core/engines/i;->d:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 387
    return-void

    .line 2406
    :cond_0
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v1

    iput v1, p0, Lcom/my/target/core/engines/i;->s:I

    goto :goto_0

    .line 2422
    :cond_1
    iget-object v2, p0, Lcom/my/target/core/engines/i;->d:Lcom/my/target/core/ui/views/AdView;

    const/16 v3, 0x280

    invoke-virtual {v0, v3}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/ui/views/AdView;->setMaxWidth(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/my/target/core/engines/i;J)J
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/my/target/core/engines/i;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/my/target/core/engines/i;)Lcom/my/target/core/engines/i$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/core/engines/i;Lcom/my/target/core/models/banners/j;)Lcom/my/target/core/models/banners/j;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    return-object p1
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/j;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/j;

    .line 45
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/j;->f()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/j;->f()Lcom/my/target/nativeads/models/ImageData;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    return-object v1
.end method

.method private a(Landroid/widget/ViewFlipper;)V
    .locals 6

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->l()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 551
    iget-object v0, p0, Lcom/my/target/core/engines/i;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/j;

    .line 554
    new-instance v2, Lcom/my/target/core/ui/views/StandardNativeView;

    iget v3, p0, Lcom/my/target/core/engines/i;->s:I

    iget-object v4, p0, Lcom/my/target/core/engines/i;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/my/target/core/engines/i;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v5}, Lcom/my/target/core/ui/views/StandardNativeView;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 556
    const-string v3, "banner"

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/j;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 557
    iget-object v4, p0, Lcom/my/target/core/engines/i;->t:Lcom/my/target/core/models/j;

    invoke-virtual {v2, v4, v3}, Lcom/my/target/core/ui/views/StandardNativeView;->setViewSettings(Lcom/my/target/core/models/j;Z)V

    .line 558
    invoke-virtual {v2, p0}, Lcom/my/target/core/ui/views/StandardNativeView;->setMyTargetClickListener(Lcom/my/target/core/engines/i;)V

    .line 559
    invoke-virtual {v2, p0}, Lcom/my/target/core/ui/views/StandardNativeView;->setEngineListener(Lcom/my/target/core/ui/views/StandardNativeView$a;)V

    .line 560
    invoke-virtual {p1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 561
    iget v3, p0, Lcom/my/target/core/engines/i;->B:I

    invoke-virtual {v2, v0, v3}, Lcom/my/target/core/ui/views/StandardNativeView;->setBanner(Lcom/my/target/core/models/banners/j;I)V

    goto :goto_0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/i;->w:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/my/target/core/engines/i;->v:Ljava/util/ArrayList;

    .line 565
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/i;Landroid/widget/ViewFlipper;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/my/target/core/engines/i;->a(Landroid/widget/ViewFlipper;)V

    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/i;Lcom/my/target/core/facades/h;)V
    .locals 6

    .prologue
    .line 30
    .line 8611
    invoke-virtual {p1}, Lcom/my/target/core/facades/h;->f()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/i;->w:Ljava/util/ArrayList;

    .line 8612
    iget-object v0, p0, Lcom/my/target/core/engines/i;->w:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 8613
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8615
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->l()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/i;->a(Landroid/widget/ViewFlipper;)V

    .line 8616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/i;->y:Z

    .line 8617
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->q()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    .line 8618
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/j;->getTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 8619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/my/target/core/engines/i;->q:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 8621
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->m()Z

    :cond_0
    :goto_0
    return-void

    .line 8631
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 8633
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/engines/i;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/engines/i;->m:Lcom/my/target/core/net/b$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/engines/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/my/target/core/engines/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/my/target/core/models/sections/j;)V
    .locals 11

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    if-eqz p1, :cond_5

    .line 528
    invoke-virtual {p1}, Lcom/my/target/core/models/sections/j;->n()I

    move-result v0

    move v10, v0

    .line 4586
    :goto_0
    if-nez v10, :cond_0

    .line 5159
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 5160
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object v9, v0

    .line 6570
    :goto_1
    if-nez v10, :cond_2

    .line 7166
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7167
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 7168
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 534
    :goto_2
    iget-object v1, p0, Lcom/my/target/core/engines/i;->k:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 536
    iget-object v1, p0, Lcom/my/target/core/engines/i;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v9}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 537
    iget-object v1, p0, Lcom/my/target/core/engines/i;->g:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 539
    iget-object v2, p0, Lcom/my/target/core/engines/i;->f:[Landroid/widget/ViewFlipper;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 541
    invoke-virtual {v4, v9}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 542
    invoke-virtual {v4, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4589
    :cond_0
    const/4 v0, 0x2

    if-ne v10, v0, :cond_1

    .line 6148
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 6152
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 6153
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v9, v0

    .line 4591
    goto :goto_1

    .line 4594
    :cond_1
    invoke-static {}, Lcom/my/target/core/utils/b;->a()Landroid/view/animation/Animation;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    .line 6573
    :cond_2
    const/4 v0, 0x2

    if-ne v10, v0, :cond_3

    .line 8137
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 8141
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 8142
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 6578
    :cond_3
    invoke-static {}, Lcom/my/target/core/utils/b;->b()Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2

    .line 544
    :cond_4
    return-void

    :cond_5
    move v10, v0

    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/StandardNativeView;->a(Z)V

    .line 651
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/my/target/core/engines/i;J)J
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/my/target/core/engines/i;->r:J

    return-wide p1
.end method

.method static synthetic b(Lcom/my/target/core/engines/i;)Lcom/my/target/ads/MyTargetView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 357
    if-eqz p1, :cond_2

    .line 359
    iget-object v0, p0, Lcom/my/target/core/engines/i;->u:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lcom/my/target/core/ui/views/controls/AdInfoButton;

    iget-object v1, p0, Lcom/my/target/core/engines/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/controls/AdInfoButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/core/engines/i;->u:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    .line 362
    iget-object v0, p0, Lcom/my/target/core/engines/i;->d:Lcom/my/target/core/ui/views/AdView;

    iget-object v1, p0, Lcom/my/target/core/engines/i;->u:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, v1, v2, v2}, Lcom/my/target/core/ui/views/AdView;->addView(Landroid/view/View;II)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/i;->u:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, p1}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->setUrl(Ljava/lang/String;)V

    .line 372
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/i;->u:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/my/target/core/engines/i;->u:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/controls/AdInfoButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 369
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/my/target/core/engines/i;->u:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 370
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/core/engines/i;->u:Lcom/my/target/core/ui/views/controls/AdInfoButton;

    goto :goto_0
.end method

.method static synthetic c(Lcom/my/target/core/engines/i;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/i;->A:Z

    return v0
.end method

.method static synthetic d(Lcom/my/target/core/engines/i;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/engines/i;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/engines/i;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/my/target/core/engines/i;)Lcom/my/target/core/models/banners/j;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    return-object v0
.end method

.method static synthetic g(Lcom/my/target/core/engines/i;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->n()V

    return-void
.end method

.method static synthetic h(Lcom/my/target/core/engines/i;)Lcom/my/target/core/facades/h;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    return-object v0
.end method

.method private i()Lcom/my/target/core/facades/h;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/i;->p:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic i(Lcom/my/target/core/engines/i;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/i;->a(Z)V

    return-void
.end method

.method private j()Landroid/widget/ViewFlipper;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/my/target/core/engines/i;->f:[Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/my/target/core/engines/i;->p:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic j(Lcom/my/target/core/engines/i;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->o()V

    return-void
.end method

.method static synthetic k(Lcom/my/target/core/engines/i;)I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->q()I

    move-result v0

    return v0
.end method

.method private k()Lcom/my/target/core/facades/h;
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/i;->p:I

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private l()Landroid/widget/ViewFlipper;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/my/target/core/engines/i;->f:[Landroid/widget/ViewFlipper;

    iget v1, p0, Lcom/my/target/core/engines/i;->p:I

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic l(Lcom/my/target/core/engines/i;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->m()Z

    move-result v0

    return v0
.end method

.method private m()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    iget-boolean v0, p0, Lcom/my/target/core/engines/i;->y:Z

    if-eqz v0, :cond_1

    .line 2674
    iget v0, p0, Lcom/my/target/core/engines/i;->p:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/my/target/core/engines/i;->p:I

    .line 2675
    iget-object v0, p0, Lcom/my/target/core/engines/i;->g:Landroid/widget/ViewFlipper;

    iget v3, p0, Lcom/my/target/core/engines/i;->p:I

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 2677
    iget-object v0, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    iget v3, p0, Lcom/my/target/core/engines/i;->p:I

    xor-int/lit8 v3, v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 2678
    iget-object v0, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    iget v3, p0, Lcom/my/target/core/engines/i;->p:I

    xor-int/lit8 v3, v3, 0x1

    aput-object v4, v0, v3

    .line 2680
    invoke-direct {p0, v2}, Lcom/my/target/core/engines/i;->a(Z)V

    .line 2681
    iget-object v0, p0, Lcom/my/target/core/engines/i;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/j;

    iput-object v0, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    .line 2682
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2684
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    iget-object v3, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    invoke-virtual {v3}, Lcom/my/target/core/models/banners/j;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/my/target/core/facades/h;->b(Ljava/lang/String;)V

    .line 2685
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->h()Lcom/my/target/core/models/sections/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/i;->a(Lcom/my/target/core/models/sections/j;)V

    .line 2686
    iget-object v0, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/j;->getTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/my/target/core/engines/i;->r:J

    .line 2687
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->o()V

    .line 444
    :cond_0
    iput-boolean v2, p0, Lcom/my/target/core/engines/i;->z:Z

    .line 445
    iput-boolean v2, p0, Lcom/my/target/core/engines/i;->y:Z

    move v0, v1

    .line 474
    :goto_0
    return v0

    .line 447
    :cond_1
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 448
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 450
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->p()V

    .line 451
    iput-boolean v1, p0, Lcom/my/target/core/engines/i;->A:Z

    .line 452
    iput-boolean v2, p0, Lcom/my/target/core/engines/i;->z:Z

    .line 453
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    :cond_2
    :goto_1
    move v0, v2

    .line 474
    goto :goto_0

    .line 456
    :cond_3
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->h()Lcom/my/target/core/models/sections/j;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v2

    goto :goto_0

    .line 459
    :cond_5
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->h()Lcom/my/target/core/models/sections/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/j;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3601
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/my/target/core/engines/i;->k()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3603
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    .line 4352
    iget-object v3, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    iget v4, p0, Lcom/my/target/core/engines/i;->p:I

    xor-int/lit8 v4, v4, 0x1

    aput-object v0, v3, v4

    .line 3604
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->k()Lcom/my/target/core/facades/h;

    move-result-object v0

    iget-object v3, p0, Lcom/my/target/core/engines/i;->n:Lcom/my/target/core/facades/h$a;

    invoke-virtual {v0, v3}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 3605
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->k()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->load()V

    .line 464
    :cond_6
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 466
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->h()Lcom/my/target/core/models/sections/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/models/sections/j;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iput-boolean v1, p0, Lcom/my/target/core/engines/i;->A:Z

    .line 469
    iput-boolean v2, p0, Lcom/my/target/core/engines/i;->z:Z

    .line 470
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_1
.end method

.method static synthetic m(Lcom/my/target/core/engines/i;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/i;->z:Z

    return v0
.end method

.method static synthetic n(Lcom/my/target/core/engines/i;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->l()Landroid/widget/ViewFlipper;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 479
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/i;->a(Landroid/widget/ViewFlipper;)V

    .line 481
    iget-object v0, p0, Lcom/my/target/core/engines/i;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/i;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/my/target/core/engines/i;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/banners/j;

    iput-object v0, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    .line 485
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/j;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/h;->b(Ljava/lang/String;)V

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/my/target/core/engines/i;->q:J

    .line 489
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 490
    sput-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/engines/i;->l:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    invoke-virtual {v2}, Lcom/my/target/core/models/banners/j;->getTimeout()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 491
    invoke-direct {p0, v4}, Lcom/my/target/core/engines/i;->a(Z)V

    .line 494
    :cond_0
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 511
    sget-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/engines/i;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/i;->v:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/my/target/core/engines/i;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/my/target/core/engines/i;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 518
    sget-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    .line 519
    :cond_1
    sget-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/engines/i;->l:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/my/target/core/engines/i;->r:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    :cond_2
    return-void
.end method

.method static synthetic o(Lcom/my/target/core/engines/i;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/i;->y:Z

    return v0
.end method

.method static synthetic p(Lcom/my/target/core/engines/i;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/my/target/core/engines/i;->q:J

    return-wide v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/ui/views/StandardNativeView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->b()V

    .line 643
    :cond_0
    return-void
.end method

.method private q()I
    .locals 1

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/ui/views/StandardNativeView;

    .line 658
    invoke-virtual {v0}, Lcom/my/target/core/ui/views/StandardNativeView;->a()I

    move-result v0

    .line 660
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic q(Lcom/my/target/core/engines/i;)Lcom/my/target/core/facades/h;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->k()Lcom/my/target/core/facades/h;

    move-result-object v0

    return-object v0
.end method

.method private r()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 665
    iget-object v0, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/i;->p:I

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/i;->p:I

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/my/target/core/facades/h;->a(Lcom/my/target/core/facades/h$a;)V

    .line 668
    iget-object v0, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    iget v1, p0, Lcom/my/target/core/engines/i;->p:I

    xor-int/lit8 v1, v1, 0x1

    aput-object v2, v0, v1

    .line 670
    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/my/target/core/engines/i;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->r()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/my/target/core/engines/i;->B:I

    if-nez v0, :cond_0

    .line 211
    iput p1, p0, Lcom/my/target/core/engines/i;->B:I

    .line 212
    :cond_0
    iget v0, p0, Lcom/my/target/core/engines/i;->B:I

    return v0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 259
    invoke-super {p0}, Lcom/my/target/core/engines/a;->a()V

    .line 261
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/i$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    const-string v0, "Pause native banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1498
    iget-boolean v0, p0, Lcom/my/target/core/engines/i;->A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/my/target/core/engines/i;->x:Lcom/my/target/core/models/banners/j;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/j;->getTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 1500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/my/target/core/engines/i;->q:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/my/target/core/engines/i;->r:J

    .line 1502
    :cond_0
    sget-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1504
    sget-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/engines/i;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1505
    const/4 v0, 0x0

    sput-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->p()V

    .line 266
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/i$a;->f()V

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_2
    const-string v0, "Cannot pause native banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public final a(Lcom/my/target/core/facades/g;)V
    .locals 4

    .prologue
    .line 218
    instance-of v0, p1, Lcom/my/target/core/facades/h;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 220
    check-cast v0, Lcom/my/target/core/facades/h;

    .line 1347
    iget-object v1, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    iget v2, p0, Lcom/my/target/core/engines/i;->p:I

    aput-object v0, v1, v2

    move-object v0, p1

    .line 221
    check-cast v0, Lcom/my/target/core/facades/h;

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->j()Lcom/my/target/core/models/j;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/i;->t:Lcom/my/target/core/models/j;

    move-object v0, p1

    .line 223
    check-cast v0, Lcom/my/target/core/facades/h;

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->h()Lcom/my/target/core/models/sections/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/i;->a(Lcom/my/target/core/models/sections/j;)V

    .line 225
    check-cast p1, Lcom/my/target/core/facades/h;

    invoke-virtual {p1}, Lcom/my/target/core/facades/h;->f()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/i;->w:Ljava/util/ArrayList;

    .line 227
    iget-object v0, p0, Lcom/my/target/core/engines/i;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/my/target/core/engines/i;->w:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/my/target/core/engines/i;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 233
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v1

    iget-object v2, p0, Lcom/my/target/core/engines/i;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/my/target/core/engines/i;->j:Lcom/my/target/core/net/b$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/my/target/core/net/b;->a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V

    .line 242
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/facades/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/i;->b(Ljava/lang/String;)V

    .line 244
    :cond_1
    const-string v0, "load native"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 248
    :cond_2
    :goto_1
    return-void

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/i$a;->e()V

    .line 237
    iget-object v0, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    invoke-interface {v0, v1}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onLoad(Lcom/my/target/ads/MyTargetView;)V

    goto :goto_0

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    const-string v1, "No ad"

    iget-object v2, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    invoke-interface {v0, v1, v2}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onNoAd(Ljava/lang/String;Lcom/my/target/ads/MyTargetView;)V

    goto :goto_1

    .line 247
    :cond_5
    const-string v0, "StandardNativeEngine: incorrect ad type"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banner clicked "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->i()Lcom/my/target/core/facades/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/my/target/core/facades/h;->a(Ljava/lang/String;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetView;->getListener()Lcom/my/target/ads/MyTargetView$MyTargetViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/i;->e:Lcom/my/target/ads/MyTargetView;

    invoke-interface {v0, v1}, Lcom/my/target/ads/MyTargetView$MyTargetViewListener;->onClick(Lcom/my/target/ads/MyTargetView;)V

    .line 396
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-super {p0}, Lcom/my/target/core/engines/a;->b()V

    .line 275
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/i$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "Resume native banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/my/target/core/engines/i;->d:Lcom/my/target/core/ui/views/AdView;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 281
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->o()V

    .line 282
    invoke-direct {p0, v1}, Lcom/my/target/core/engines/i;->a(Z)V

    .line 283
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/i$a;->g()V

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string v0, "Cannot resume native banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-super {p0}, Lcom/my/target/core/engines/a;->c()V

    .line 292
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/i$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "Stop native banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/my/target/core/engines/i;->d:Lcom/my/target/core/ui/views/AdView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 297
    sget-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/my/target/core/engines/i;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 300
    const/4 v0, 0x0

    sput-object v0, Lcom/my/target/core/engines/i;->c:Landroid/os/Handler;

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->p()V

    .line 305
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->j()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 306
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->l()Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 307
    iput-boolean v2, p0, Lcom/my/target/core/engines/i;->z:Z

    .line 308
    iput-boolean v2, p0, Lcom/my/target/core/engines/i;->y:Z

    .line 309
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->r()V

    .line 310
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/i$a;->i()V

    .line 312
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string v0, "Cannot stop native banner: Not started"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/my/target/core/engines/a;->d()V

    .line 319
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/i$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "Start native banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/my/target/core/engines/i;->d:Lcom/my/target/core/ui/views/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/AdView;->setVisibility(I)V

    .line 323
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->n()V

    .line 324
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/i$a;->h()V

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string v0, "Cannot start native banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    invoke-super {p0}, Lcom/my/target/core/engines/a;->f()V

    .line 332
    invoke-virtual {p0}, Lcom/my/target/core/engines/i;->c()V

    .line 333
    const-string v0, "Destroy native banner"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 335
    iget-object v0, p0, Lcom/my/target/core/engines/i;->h:[Lcom/my/target/core/facades/h;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 336
    iget-object v0, p0, Lcom/my/target/core/engines/i;->i:Lcom/my/target/core/engines/i$a;

    invoke-virtual {v0}, Lcom/my/target/core/engines/i$a;->j()V

    .line 337
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    iget-boolean v1, p0, Lcom/my/target/core/engines/i;->z:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/my/target/core/engines/i;->m()Z

    move-result v0

    .line 204
    :cond_0
    return v0
.end method
