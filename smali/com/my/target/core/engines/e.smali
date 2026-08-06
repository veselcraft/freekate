.class public final Lcom/my/target/core/engines/e;
.super Lcom/my/target/core/engines/a;
.source "FSPromoAdEngine.java"


# instance fields
.field private final c:Lcom/my/target/core/facades/e;

.field private d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

.field private final e:Ljava/lang/Runnable;

.field private f:Lcom/my/target/core/models/banners/g;

.field private g:Lcom/my/target/core/engines/b$a;

.field private final h:Landroid/view/View$OnClickListener;

.field private i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/my/target/core/models/i;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/my/target/core/models/banners/m;

.field private k:Z

.field private final l:Landroid/view/View$OnClickListener;

.field private final m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final n:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

.field private o:Z

.field private p:Z

.field private q:Z

.field private final r:Landroid/view/View$OnClickListener;

.field private s:F

.field private t:F

.field private u:J

.field private v:Z

.field private w:Z

.field private final x:Lcom/my/target/core/ui/views/video/VideoTextureView$a;


# direct methods
.method public constructor <init>(Lcom/my/target/core/facades/e;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 281
    invoke-direct {p0, p2, p3}, Lcom/my/target/core/engines/a;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/my/target/core/engines/e$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$1;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->e:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lcom/my/target/core/engines/e$2;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$2;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->h:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v0, Lcom/my/target/core/engines/e$3;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$3;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->l:Landroid/view/View$OnClickListener;

    .line 80
    new-instance v0, Lcom/my/target/core/engines/e$4;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$4;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 109
    new-instance v0, Lcom/my/target/core/engines/e$5;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$5;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->n:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    .line 144
    iput-boolean v3, p0, Lcom/my/target/core/engines/e;->p:Z

    .line 145
    iput-boolean v6, p0, Lcom/my/target/core/engines/e;->q:Z

    .line 146
    new-instance v0, Lcom/my/target/core/engines/e$6;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$6;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->r:Landroid/view/View$OnClickListener;

    .line 169
    iput-boolean v3, p0, Lcom/my/target/core/engines/e;->v:Z

    .line 171
    new-instance v0, Lcom/my/target/core/engines/e$7;

    invoke-direct {v0, p0}, Lcom/my/target/core/engines/e$7;-><init>(Lcom/my/target/core/engines/e;)V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->x:Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    .line 282
    iput-object p1, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/e;

    .line 1288
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/e;

    invoke-virtual {v0}, Lcom/my/target/core/facades/e;->b()Lcom/my/target/core/models/banners/g;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/g;

    .line 1289
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/g;

    if-eqz v0, :cond_2

    .line 1291
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/g;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    .line 2017
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/my/target/core/utils/l;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2018
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2019
    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->l()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 2021
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoVideoStyleView;-><init>(Landroid/content/Context;)V

    .line 1291
    :goto_0
    iput-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    .line 1293
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 1294
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->x:Lcom/my/target/core/ui/views/video/VideoTextureView$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setVideoListener(Lcom/my/target/core/ui/views/video/VideoTextureView$a;)V

    .line 1295
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setBanner(Lcom/my/target/core/models/banners/g;)V

    .line 1297
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1300
    iget-object v1, p0, Lcom/my/target/core/engines/e;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->a()Lcom/my/target/core/models/banners/m;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    .line 1303
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    if-eqz v0, :cond_7

    .line 1305
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->v:Z

    .line 1306
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/my/target/core/engines/e;->u:J

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->o:Z

    .line 1311
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->h()F

    move-result v0

    iput v0, p0, Lcom/my/target/core/engines/e;->s:F

    .line 1313
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->o:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/my/target/core/engines/e;->s:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 1315
    const-string v0, "banner is allowed to close"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->g()V

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->f()F

    move-result v0

    iput v0, p0, Lcom/my/target/core/engines/e;->t:F

    .line 1320
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->n:Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setOnVideoClickListener(Lcom/my/target/core/ui/views/fspromo/FSPromoView$a;)V

    .line 1321
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->k:Z

    .line 1322
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->k:Z

    if-eqz v0, :cond_5

    .line 1324
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0, v6}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(I)V

    .line 1345
    :goto_1
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/e;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v0, v1}, Lcom/my/target/core/facades/e;->a(Lcom/my/target/core/models/banners/d;)V

    .line 1347
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->setOnCTAClickListener(Landroid/view/View$OnClickListener;)V

    .line 1349
    :cond_2
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1351
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->c()Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/core/engines/e;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/controls/IconButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    :cond_3
    return-void

    .line 2022
    :cond_4
    new-instance v0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;

    invoke-direct {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1327
    :cond_5
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1328
    iget-object v0, p0, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/e;->a(Landroid/content/Context;)V

    .line 1329
    :cond_6
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(I)V

    goto :goto_1

    .line 1333
    :cond_7
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->i()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "banner will be allowed to close in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v1}, Lcom/my/target/core/models/banners/g;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/g;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/g;->i()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/my/target/core/engines/e;->a(J)V

    goto :goto_1

    .line 1340
    :cond_8
    const-string v0, "banner is allowed to close"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->g()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/my/target/core/engines/e;)Lcom/my/target/core/ui/views/fspromo/FSPromoView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    return-object v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/my/target/core/engines/e;->u:J

    .line 359
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 382
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 383
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 386
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/e;F)V
    .locals 3

    .prologue
    .line 22
    .line 2424
    iget-object v0, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    if-eqz v0, :cond_0

    .line 2426
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/e;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    iget-object v2, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2, p1}, Lcom/my/target/core/facades/e;->a(Lcom/my/target/core/models/banners/m;Ljava/util/Set;F)V

    .line 22
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/e;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/my/target/core/engines/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/e;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 22
    .line 2408
    iget-object v0, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 2409
    iget-object v0, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2413
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 2415
    invoke-virtual {v0}, Lcom/my/target/core/models/k;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playheadReachedValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/my/target/core/models/i;

    if-eqz v2, :cond_0

    .line 2417
    iget-object v2, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    check-cast v0, Lcom/my/target/core/models/i;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2411
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/engines/e;->i:Ljava/util/HashSet;

    goto :goto_0

    .line 22
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/my/target/core/engines/e;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/my/target/core/engines/e;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/g;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/engines/e;->f:Lcom/my/target/core/models/banners/g;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->m:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 403
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/my/target/core/engines/e;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/my/target/core/engines/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/my/target/core/engines/e;)Lcom/my/target/core/facades/e;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/e;

    return-object v0
.end method

.method static synthetic d(Lcom/my/target/core/engines/e;)Lcom/my/target/core/engines/b$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/engines/e;->g:Lcom/my/target/core/engines/b$a;

    return-object v0
.end method

.method static synthetic e(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/my/target/core/engines/e;)Lcom/my/target/core/models/banners/m;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    return-object v0
.end method

.method static synthetic g(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->q:Z

    return v0
.end method

.method static synthetic h(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->o:Z

    return v0
.end method

.method static synthetic i(Lcom/my/target/core/engines/e;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/engines/e;->s:F

    return v0
.end method

.method static synthetic j(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->w:Z

    return v0
.end method

.method static synthetic k(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->p:Z

    return v0
.end method

.method static synthetic l(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->p:Z

    return v0
.end method

.method static synthetic m(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->q:Z

    return v0
.end method

.method static synthetic n(Lcom/my/target/core/engines/e;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/engines/e;->t:F

    return v0
.end method

.method static synthetic o(Lcom/my/target/core/engines/e;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->v:Z

    return v0
.end method

.method static synthetic p(Lcom/my/target/core/engines/e;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 22
    .line 3390
    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->p:Z

    .line 3391
    iget-object v1, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->g()V

    .line 3393
    iget-object v1, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    if-eqz v1, :cond_0

    .line 3394
    iget-object v0, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    invoke-virtual {v0}, Lcom/my/target/core/models/banners/m;->d()Z

    move-result v0

    .line 3395
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/my/target/core/engines/e;->b(Landroid/content/Context;)V

    .line 3396
    iget-object v1, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v1, v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 439
    invoke-super {p0}, Lcom/my/target/core/engines/a;->a()V

    .line 440
    iget-object v0, p0, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/e;->b(Landroid/content/Context;)V

    .line 442
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/e;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->j:Lcom/my/target/core/models/banners/m;

    const-string v2, "playbackPaused"

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/facades/e;->a(Lcom/my/target/core/models/banners/d;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->i()V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    iget-object v1, p0, Lcom/my/target/core/engines/e;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 452
    :cond_1
    return-void
.end method

.method public final a(Lcom/my/target/core/engines/b$a;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/my/target/core/engines/e;->g:Lcom/my/target/core/engines/b$a;

    .line 277
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 457
    invoke-super {p0}, Lcom/my/target/core/engines/a;->b()V

    .line 459
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 463
    iget-wide v2, p0, Lcom/my/target/core/engines/e;->u:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 465
    iget-wide v2, p0, Lcom/my/target/core/engines/e;->u:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 467
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->g()V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-wide v2, p0, Lcom/my/target/core/engines/e;->u:J

    sub-long v0, v2, v0

    invoke-direct {p0, v0, v1}, Lcom/my/target/core/engines/e;->a(J)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 479
    invoke-super {p0}, Lcom/my/target/core/engines/a;->e()V

    .line 480
    iget-object v0, p0, Lcom/my/target/core/engines/e;->c:Lcom/my/target/core/facades/e;

    invoke-virtual {v0}, Lcom/my/target/core/facades/e;->d()V

    .line 481
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/my/target/core/engines/e;->w:Z

    .line 434
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/my/target/core/engines/e;->v:Z

    return v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/e;->b(Landroid/content/Context;)V

    .line 365
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(I)V

    .line 366
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/my/target/core/engines/e;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/my/target/core/engines/e;->a(Landroid/content/Context;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(I)V

    .line 373
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/my/target/core/engines/e;->d:Lcom/my/target/core/ui/views/fspromo/FSPromoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoView;->a(I)V

    .line 378
    return-void
.end method
