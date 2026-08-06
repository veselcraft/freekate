.class Lcom/inmobi/ads/ad;
.super Ljava/lang/Object;
.source "NativeStrandPositioningController.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final u:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/inmobi/ads/af;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/inmobi/ads/q;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/q;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;

.field private i:Lcom/inmobi/ads/r;

.field private j:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

.field private final k:J

.field private l:Lcom/inmobi/ads/ae;

.field private m:Lcom/inmobi/ads/ae;

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private final v:Lcom/inmobi/ads/r$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/inmobi/ads/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ad;->a:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/inmobi/ads/ad$1;

    invoke-direct {v0}, Lcom/inmobi/ads/ad$1;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ad;->u:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/inmobi/ads/ad$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ad$2;-><init>(Lcom/inmobi/ads/ad;)V

    iput-object v0, p0, Lcom/inmobi/ads/ad;->v:Lcom/inmobi/ads/r$a;

    .line 105
    iput-object p1, p0, Lcom/inmobi/ads/ad;->b:Landroid/content/Context;

    .line 106
    iput-wide p2, p0, Lcom/inmobi/ads/ad;->k:J

    .line 107
    iput-object p4, p0, Lcom/inmobi/ads/ad;->h:Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;

    .line 109
    sget-object v0, Lcom/inmobi/ads/ad;->u:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    iput-object v0, p0, Lcom/inmobi/ads/ad;->j:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    .line 110
    new-instance v0, Lcom/inmobi/ads/r;

    iget-object v1, p0, Lcom/inmobi/ads/ad;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/inmobi/ads/ad;->k:J

    iget-object v4, p0, Lcom/inmobi/ads/ad;->h:Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;

    iget-object v5, p0, Lcom/inmobi/ads/ad;->v:Lcom/inmobi/ads/r$a;

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/r;-><init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;Lcom/inmobi/ads/r$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/ad;->i:Lcom/inmobi/ads/r;

    .line 111
    new-instance v0, Lcom/inmobi/ads/u;

    invoke-direct {v0, p4}, Lcom/inmobi/ads/u;-><init>(Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V

    iput-object v0, p0, Lcom/inmobi/ads/ad;->c:Lcom/inmobi/ads/af;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ad;->g:Ljava/util/WeakHashMap;

    .line 116
    invoke-static {}, Lcom/inmobi/ads/ae;->c()Lcom/inmobi/ads/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    .line 117
    invoke-static {}, Lcom/inmobi/ads/ae;->c()Lcom/inmobi/ads/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ad;->m:Lcom/inmobi/ads/ae;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ad;->d:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/inmobi/ads/ad$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ad$3;-><init>(Lcom/inmobi/ads/ad;)V

    iput-object v0, p0, Lcom/inmobi/ads/ad;->e:Ljava/lang/Runnable;

    .line 130
    iput v6, p0, Lcom/inmobi/ads/ad;->o:I

    .line 131
    iput v6, p0, Lcom/inmobi/ads/ad;->p:I

    .line 132
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 221
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ad;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/q;

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/q;->a(Landroid/view/View;)V

    .line 227
    iget-object v1, p0, Lcom/inmobi/ads/ad;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V
    .locals 2

    .prologue
    .line 583
    .line 584
    invoke-static {p1}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)Lcom/inmobi/ads/ae;

    move-result-object v0

    .line 585
    iget-boolean v1, p0, Lcom/inmobi/ads/ad;->r:Z

    if-eqz v1, :cond_0

    .line 586
    invoke-direct {p0, v0}, Lcom/inmobi/ads/ad;->a(Lcom/inmobi/ads/ae;)V

    .line 590
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ad;->s:Z

    .line 591
    return-void

    .line 588
    :cond_0
    iput-object v0, p0, Lcom/inmobi/ads/ad;->m:Lcom/inmobi/ads/ae;

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/ad;Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ad;->a(Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;)V

    return-void
.end method

.method private a(Lcom/inmobi/ads/ae;)V
    .locals 2

    .prologue
    .line 596
    const/4 v0, 0x0

    iget v1, p0, Lcom/inmobi/ads/ad;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ad;->b(II)I

    .line 598
    iput-object p1, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    .line 599
    invoke-direct {p0}, Lcom/inmobi/ads/ad;->g()V

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ad;->q:Z

    .line 601
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ad;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/inmobi/ads/ad;->t:Z

    return v0
.end method

.method static synthetic a(Lcom/inmobi/ads/ad;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/inmobi/ads/ad;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/ad;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/inmobi/ads/ad;->g()V

    return-void
.end method

.method private c(II)Z
    .locals 2

    .prologue
    .line 539
    .line 540
    add-int/lit8 v0, p2, -0x1

    .line 541
    :goto_0
    if-gt p1, v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 542
    iget v1, p0, Lcom/inmobi/ads/ad;->n:I

    if-lt p1, v1, :cond_1

    .line 553
    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ae;->b(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 546
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ad;->k(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 547
    const/4 v0, 0x0

    goto :goto_1

    .line 549
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 551
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ae;->c(I)I

    move-result p1

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/inmobi/ads/ad;->t:Z

    if-eqz v0, :cond_0

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ad;->t:Z

    .line 561
    iget-object v0, p0, Lcom/inmobi/ads/ad;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/ads/ad;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Lcom/inmobi/ads/ad;->o:I

    iget v1, p0, Lcom/inmobi/ads/ad;->p:I

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/ad;->c(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 612
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/ad;->p:I

    iget v1, p0, Lcom/inmobi/ads/ad;->p:I

    add-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/ad;->c(II)Z

    goto :goto_0
.end method

.method private k(I)Z
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/inmobi/ads/ad;->i:Lcom/inmobi/ads/r;

    invoke-virtual {v0}, Lcom/inmobi/ads/r;->g()Lcom/inmobi/ads/q;

    move-result-object v0

    .line 573
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 579
    :goto_0
    return v0

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/q;I)V

    .line 576
    iget v0, p0, Lcom/inmobi/ads/ad;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/ad;->n:I

    .line 578
    iget-object v0, p0, Lcom/inmobi/ads/ad;->j:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    invoke-interface {v0, p1}, Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;->onAdLoadSucceeded(I)V

    .line 579
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->a(I)Lcom/inmobi/ads/q;

    move-result-object v3

    .line 196
    if-nez v3, :cond_0

    .line 217
    :goto_0
    return-object v1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ad;->i:Lcom/inmobi/ads/r;

    .line 198
    invoke-virtual {v0}, Lcom/inmobi/ads/r;->i()Lcom/inmobi/ads/b$f;

    move-result-object v0

    .line 197
    invoke-virtual {v3, p2, p3, v0}, Lcom/inmobi/ads/q;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/inmobi/ads/b$f;)Landroid/view/View;

    move-result-object v2

    .line 199
    if-nez v2, :cond_1

    .line 200
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "StrandInflationFailed"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ad;->a:Ljava/lang/String;

    const-string v3, "Error inflating view even with a valid data model!"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 208
    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 211
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    invoke-direct {p0, v0}, Lcom/inmobi/ads/ad;->a(Landroid/view/View;)V

    .line 213
    invoke-direct {p0, v2}, Lcom/inmobi/ads/ad;->a(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/inmobi/ads/ad;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v1, v2

    .line 217
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->a(I)Lcom/inmobi/ads/q;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/inmobi/ads/ad;->q:Z

    .line 152
    iput-boolean v0, p0, Lcom/inmobi/ads/ad;->s:Z

    .line 153
    iput-boolean v0, p0, Lcom/inmobi/ads/ad;->r:Z

    .line 155
    iget-object v0, p0, Lcom/inmobi/ads/ad;->c:Lcom/inmobi/ads/af;

    iget-wide v2, p0, Lcom/inmobi/ads/ad;->k:J

    new-instance v1, Lcom/inmobi/ads/ad$4;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/ad$4;-><init>(Lcom/inmobi/ads/ad;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/af;->a(JLcom/inmobi/ads/af$a;)V

    .line 165
    iget-object v0, p0, Lcom/inmobi/ads/ad;->i:Lcom/inmobi/ads/r;

    invoke-virtual {v0}, Lcom/inmobi/ads/r;->e()V

    .line 166
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 377
    iput p1, p0, Lcom/inmobi/ads/ad;->o:I

    .line 378
    add-int/lit8 v0, p1, 0x64

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/ad;->p:I

    .line 379
    invoke-direct {p0}, Lcom/inmobi/ads/ad;->f()V

    .line 380
    return-void
.end method

.method public a(Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;)V
    .locals 0

    .prologue
    .line 147
    if-nez p1, :cond_0

    sget-object p1, Lcom/inmobi/ads/ad;->u:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    :cond_0
    iput-object p1, p0, Lcom/inmobi/ads/ad;->j:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    .line 148
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/inmobi/ads/ad;->i:Lcom/inmobi/ads/r;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r;->a(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/inmobi/ads/ad;->i:Lcom/inmobi/ads/r;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/r;->c(Ljava/util/Map;)V

    .line 170
    return-void
.end method

.method public b(II)I
    .locals 7

    .prologue
    .line 392
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->b()[I

    move-result-object v1

    .line 394
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->h(I)I

    move-result v2

    .line 395
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/ae;->h(I)I

    move-result v3

    .line 397
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 400
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 401
    aget v5, v1, v0

    .line 402
    if-lt v5, v2, :cond_0

    if-lt v5, v3, :cond_1

    .line 400
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 406
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget v6, p0, Lcom/inmobi/ads/ad;->o:I

    if-ge v5, v6, :cond_2

    .line 411
    iget v5, p0, Lcom/inmobi/ads/ad;->o:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/inmobi/ads/ad;->o:I

    .line 413
    :cond_2
    iget v5, p0, Lcom/inmobi/ads/ad;->n:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/inmobi/ads/ad;->n:I

    goto :goto_1

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/ae;->a(II)I

    move-result v1

    .line 417
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 418
    iget-object v3, p0, Lcom/inmobi/ads/ad;->j:Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;

    invoke-interface {v3, v0}, Lcom/inmobi/ads/InMobiStrandAdapter$NativeStrandAdListener;->onAdRemoved(I)V

    goto :goto_2

    .line 420
    :cond_4
    return v1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/inmobi/ads/ad;->q:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/inmobi/ads/ad;->f()V

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/ads/ad;->s:Z

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/inmobi/ads/ad;->m:Lcom/inmobi/ads/ae;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/ad;->a(Lcom/inmobi/ads/ae;)V

    .line 188
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ad;->r:Z

    goto :goto_0
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->d(I)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->j(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/ad;->n:I

    .line 277
    iget-boolean v0, p0, Lcom/inmobi/ads/ad;->q:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/inmobi/ads/ad;->f()V

    .line 280
    :cond_0
    return-void
.end method

.method public d(I)I
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/ad;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 433
    const/4 v0, 0x0

    iget v1, p0, Lcom/inmobi/ads/ad;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ad;->b(II)I

    .line 434
    iget-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/q;

    .line 435
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Lcom/inmobi/ads/q;->c()V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 440
    iget-object v0, p0, Lcom/inmobi/ads/ad;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 441
    iget-object v0, p0, Lcom/inmobi/ads/ad;->i:Lcom/inmobi/ads/r;

    invoke-virtual {v0}, Lcom/inmobi/ads/r;->f()V

    .line 442
    return-void
.end method

.method public e(I)I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->g(I)I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/inmobi/ads/ad;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/q;

    .line 520
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/inmobi/ads/q;->c()V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ad;->i:Lcom/inmobi/ads/r;

    invoke-virtual {v0}, Lcom/inmobi/ads/r;->h()V

    .line 525
    iget-object v0, p0, Lcom/inmobi/ads/ad;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 526
    iget-object v0, p0, Lcom/inmobi/ads/ad;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 527
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->a()V

    .line 528
    return-void
.end method

.method public f(I)I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->h(I)I

    move-result v0

    return v0
.end method

.method public g(I)I
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->i(I)I

    move-result v0

    return v0
.end method

.method public h(I)I
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->j(I)I

    move-result v0

    return v0
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->e(I)V

    .line 463
    return-void
.end method

.method public j(I)V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/inmobi/ads/ad;->l:Lcom/inmobi/ads/ae;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ae;->f(I)V

    .line 484
    return-void
.end method
