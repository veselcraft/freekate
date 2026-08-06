.class Lcom/inmobi/ads/aj;
.super Ljava/lang/Object;
.source "NativeStrandViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/aj$a;,
        Lcom/inmobi/ads/aj$b;,
        Lcom/inmobi/ads/aj$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/inmobi/ads/aj$c;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/aj;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Lcom/squareup/picasso/Picasso;


# instance fields
.field private b:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/aj$c;",
            "Lcom/inmobi/ads/aj$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const-class v0, Lcom/inmobi/ads/aj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/aj;->c:Ljava/util/Map;

    .line 248
    sget-object v0, Lcom/inmobi/ads/aj;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/ag;

    sget-object v2, Lcom/inmobi/ads/aj$c;->a:Lcom/inmobi/ads/aj$c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/inmobi/ads/aj;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/ao;

    sget-object v2, Lcom/inmobi/ads/aj$c;->b:Lcom/inmobi/ads/aj$c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/inmobi/ads/aj;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/NativeStrandContainerLayout;

    sget-object v2, Lcom/inmobi/ads/aj$c;->c:Lcom/inmobi/ads/aj$c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/inmobi/ads/aj;->c:Ljava/util/Map;

    const-class v1, Landroid/widget/ImageView;

    sget-object v2, Lcom/inmobi/ads/aj$c;->f:Lcom/inmobi/ads/aj$c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/inmobi/ads/aj;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/aj$a;

    sget-object v2, Lcom/inmobi/ads/aj$c;->d:Lcom/inmobi/ads/aj$c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/inmobi/ads/aj;->c:Ljava/util/Map;

    const-class v1, Landroid/widget/Button;

    sget-object v2, Lcom/inmobi/ads/aj$c;->e:Lcom/inmobi/ads/aj$c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/aj;->d:Ljava/util/Map;

    .line 260
    new-instance v0, Lcom/inmobi/ads/aj$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/aj$1;-><init>(Lcom/inmobi/ads/aj;)V

    .line 271
    iget-object v1, p0, Lcom/inmobi/ads/aj;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/aj$c;->a:Lcom/inmobi/ads/aj$c;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v0, Lcom/inmobi/ads/aj$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/aj$2;-><init>(Lcom/inmobi/ads/aj;)V

    .line 285
    iget-object v1, p0, Lcom/inmobi/ads/aj;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/aj$c;->c:Lcom/inmobi/ads/aj$c;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v0, Lcom/inmobi/ads/aj$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/aj$3;-><init>(Lcom/inmobi/ads/aj;)V

    .line 305
    iget-object v1, p0, Lcom/inmobi/ads/aj;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/aj$c;->b:Lcom/inmobi/ads/aj$c;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v0, Lcom/inmobi/ads/aj$4;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/aj$4;-><init>(Lcom/inmobi/ads/aj;)V

    .line 330
    iget-object v1, p0, Lcom/inmobi/ads/aj;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/aj$c;->f:Lcom/inmobi/ads/aj$c;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v0, Lcom/inmobi/ads/aj$5;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/aj$5;-><init>(Lcom/inmobi/ads/aj;)V

    .line 354
    iget-object v1, p0, Lcom/inmobi/ads/aj;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/aj$c;->d:Lcom/inmobi/ads/aj$c;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v0, Lcom/inmobi/ads/aj$6;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/aj$6;-><init>(Lcom/inmobi/ads/aj;)V

    .line 378
    iget-object v1, p0, Lcom/inmobi/ads/aj;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/aj$c;->e:Lcom/inmobi/ads/aj$c;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/aj;)I
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/inmobi/ads/aj;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/inmobi/ads/aj;->b:I

    return v0
.end method

.method public static a(Lcom/inmobi/ads/NativeStrandAsset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 849
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 850
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/t;->b()Landroid/graphics/Point;

    move-result-object v2

    .line 852
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 853
    instance-of v3, p1, Lcom/inmobi/ads/NativeStrandContainerLayout;

    if-eqz v3, :cond_0

    .line 854
    new-instance v1, Lcom/inmobi/ads/NativeStrandContainerLayout$a;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v0}, Lcom/inmobi/ads/NativeStrandContainerLayout$a;-><init>(II)V

    move-object v0, v1

    .line 855
    check-cast v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/ads/NativeStrandContainerLayout$a;->a(II)V

    .line 869
    :goto_0
    return-object v1

    .line 856
    :cond_0
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 857
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 858
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 859
    :cond_1
    instance-of v3, p1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_2

    .line 861
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 862
    :cond_2
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 863
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 864
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 866
    :cond_3
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set layout params for Parent:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_4

    const-string v0, "null"

    .line 867
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 867
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Landroid/widget/Button;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/inmobi/ads/aj;->b(Landroid/widget/Button;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/inmobi/ads/NativeStrandAsset;)Lcom/inmobi/ads/aj$c;
    .locals 2

    .prologue
    .line 510
    instance-of v0, p1, Lcom/inmobi/ads/v;

    if-eqz v0, :cond_2

    .line 511
    check-cast p1, Lcom/inmobi/ads/v;

    .line 512
    invoke-virtual {p1}, Lcom/inmobi/ads/v;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lcom/inmobi/ads/aj$c;->a:Lcom/inmobi/ads/aj$c;

    .line 530
    :goto_0
    return-object v0

    .line 514
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/v;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    sget-object v0, Lcom/inmobi/ads/aj$c;->b:Lcom/inmobi/ads/aj$c;

    goto :goto_0

    .line 517
    :cond_1
    sget-object v0, Lcom/inmobi/ads/aj$c;->c:Lcom/inmobi/ads/aj$c;

    goto :goto_0

    .line 520
    :cond_2
    sget-object v0, Lcom/inmobi/ads/aj$7;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAsset;->a()Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 530
    const/4 v0, 0x0

    goto :goto_0

    .line 522
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/aj$c;->d:Lcom/inmobi/ads/aj$c;

    goto :goto_0

    .line 525
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/aj$c;->f:Lcom/inmobi/ads/aj$c;

    goto :goto_0

    .line 527
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/aj$c;->e:Lcom/inmobi/ads/aj$c;

    goto :goto_0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Lcom/inmobi/ads/aj;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 388
    sget-object v0, Lcom/inmobi/ads/aj;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 390
    :goto_0
    if-nez v0, :cond_1

    .line 391
    const-class v2, Lcom/inmobi/ads/aj;

    monitor-enter v2

    .line 392
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/aj;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 393
    :goto_1
    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/inmobi/ads/aj;

    invoke-direct {v0}, Lcom/inmobi/ads/aj;-><init>()V

    .line 395
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/inmobi/ads/aj;->e:Ljava/lang/ref/WeakReference;

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/ads/aj;->b(Landroid/content/Context;)V

    .line 398
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :cond_1
    return-object v0

    .line 388
    :cond_2
    sget-object v0, Lcom/inmobi/ads/aj;->e:Ljava/lang/ref/WeakReference;

    .line 389
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj;

    goto :goto_0

    .line 392
    :cond_3
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/aj;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj;

    goto :goto_1

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/inmobi/ads/aj;->b()Lcom/inmobi/ads/aj$b;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/inmobi/ads/aj$b;->b()V

    .line 579
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 743
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->k()Lcom/inmobi/ads/NativeStrandAsset;

    move-result-object v5

    .line 745
    const/4 v2, 0x0

    .line 747
    if-eqz v5, :cond_6

    sget-object v0, Lcom/inmobi/ads/t$b;->b:Lcom/inmobi/ads/t$b;

    invoke-virtual {v5}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/t;->c()Lcom/inmobi/ads/t$b;

    move-result-object v3

    if-ne v0, v3, :cond_6

    .line 748
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/t;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/t;->b()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 752
    :goto_0
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 753
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/t;->b()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v6

    if-ne v3, v4, :cond_4

    move v3, v1

    .line 757
    :goto_1
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/ads/t;->b()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/t;->b()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-ne v4, v6, :cond_3

    move v4, v1

    .line 761
    :goto_2
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 762
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v7

    invoke-virtual {v7}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v8

    invoke-virtual {v8}, Lcom/inmobi/ads/t;->b()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    if-ne v6, v7, :cond_0

    move v2, v1

    .line 766
    :cond_0
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ne v5, v6, :cond_2

    move v0, v1

    .line 771
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_1

    .line 772
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 776
    :goto_4
    return-void

    .line 774
    :cond_1
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_4

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v1, v2

    move v4, v2

    move v0, v2

    goto :goto_3
.end method

.method static a(Landroid/view/View;Lcom/inmobi/ads/t;)V
    .locals 5

    .prologue
    .line 781
    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 783
    :try_start_0
    invoke-virtual {p1}, Lcom/inmobi/ads/t;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 790
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 791
    sget-object v1, Lcom/inmobi/ads/t$b;->b:Lcom/inmobi/ads/t$b;

    invoke-virtual {p1}, Lcom/inmobi/ads/t;->c()Lcom/inmobi/ads/t$b;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 792
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 793
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 794
    sget-object v0, Lcom/inmobi/ads/t$a;->a:Lcom/inmobi/ads/t$a;

    invoke-virtual {p1}, Lcom/inmobi/ads/t;->d()Lcom/inmobi/ads/t$a;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 795
    invoke-virtual {p1}, Lcom/inmobi/ads/t;->e()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 797
    :cond_0
    const-string v0, "#ff000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 799
    :try_start_1
    invoke-virtual {p1}, Lcom/inmobi/ads/t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 805
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 806
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    .line 808
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 813
    :cond_1
    :goto_2
    return-void

    .line 784
    :catch_0
    move-exception v1

    .line 785
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    const-string v3, "Error parsing background color for container! Will fallback to default background color"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 800
    :catch_1
    move-exception v2

    .line 801
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    const-string v4, "Error parsing border color for container! Will fallback to default border color"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 810
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private a(Landroid/widget/ImageView;Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 4

    .prologue
    .line 606
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 607
    if-eqz v0, :cond_1

    .line 608
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 609
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 613
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    sget-object v3, Lcom/inmobi/ads/aj;->f:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 616
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/aj;->a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAsset;)V

    .line 617
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/inmobi/ads/aj;->a(Landroid/view/View;Lcom/inmobi/ads/t;)V

    .line 619
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0}, Lcom/inmobi/ads/aj;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 630
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ah$a;

    .line 631
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 632
    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->a()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->a()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 631
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 637
    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->h()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 640
    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 642
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 648
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 650
    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 652
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 658
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 660
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 661
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 663
    :cond_0
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 664
    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->k()[Lcom/inmobi/ads/ah$a$a;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/inmobi/ads/aj;->a(Landroid/widget/TextView;[Lcom/inmobi/ads/ah$a$a;)V

    .line 666
    invoke-virtual {v0}, Lcom/inmobi/ads/ah$a;->j()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 667
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 669
    :cond_1
    invoke-static {p1, v0}, Lcom/inmobi/ads/aj;->a(Landroid/view/View;Lcom/inmobi/ads/t;)V

    .line 670
    return-void

    .line 643
    :catch_0
    move-exception v2

    .line 644
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    const-string v4, "Error parsing color for text asset! Will fallback to default text color"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :catch_1
    move-exception v2

    .line 654
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    const-string v4, "Error parsing background color for text asset! Will fallback to default background color"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Landroid/widget/TextView;[Lcom/inmobi/ads/ah$a$a;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 673
    .line 674
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    .line 675
    array-length v3, p1

    move v2, v0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    .line 676
    sget-object v5, Lcom/inmobi/ads/aj$7;->b:[I

    invoke-virtual {v4}, Lcom/inmobi/ads/ah$a$a;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 675
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    :pswitch_0
    or-int/lit8 v1, v1, 0x1

    .line 680
    goto :goto_1

    .line 682
    :pswitch_1
    or-int/lit8 v1, v1, 0x2

    .line 683
    goto :goto_1

    .line 685
    :pswitch_2
    or-int/lit8 v0, v0, 0x10

    .line 686
    goto :goto_1

    .line 688
    :pswitch_3
    or-int/lit8 v0, v0, 0x8

    .line 689
    goto :goto_1

    .line 694
    :cond_0
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 695
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 696
    return-void

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/inmobi/ads/aj;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/aj;->a(Landroid/widget/ImageView;Lcom/inmobi/ads/NativeStrandAsset;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/aj;Landroid/widget/TextView;Lcom/inmobi/ads/NativeStrandAsset;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/aj;->a(Landroid/widget/TextView;Lcom/inmobi/ads/NativeStrandAsset;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/ads/aj;)I
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/inmobi/ads/aj;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/inmobi/ads/aj;->b:I

    return v0
.end method

.method private static b(Landroid/widget/Button;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/widget/Button;
    .locals 6

    .prologue
    const/16 v5, 0x11

    .line 700
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAsset;->b()Lcom/inmobi/ads/t;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/w$a;

    .line 701
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 702
    invoke-virtual {v0}, Lcom/inmobi/ads/w$a;->a()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/inmobi/ads/w$a;->a()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 701
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAsset;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 707
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/inmobi/ads/w$a;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 709
    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 711
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/ads/w$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 717
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 719
    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 721
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/ads/w$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 727
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 729
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_0

    .line 730
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextAlignment(I)V

    .line 732
    :cond_0
    invoke-virtual {p0, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 734
    invoke-virtual {v0}, Lcom/inmobi/ads/w$a;->k()[Lcom/inmobi/ads/ah$a$a;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/inmobi/ads/aj;->a(Landroid/widget/TextView;[Lcom/inmobi/ads/ah$a$a;)V

    .line 735
    invoke-static {p0, v0}, Lcom/inmobi/ads/aj;->a(Landroid/view/View;Lcom/inmobi/ads/t;)V

    .line 736
    return-object p0

    .line 712
    :catch_0
    move-exception v2

    .line 713
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    const-string v4, "Error parsing color for CTA asset! Will fallback to default text color"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :catch_1
    move-exception v2

    .line 723
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    const-string v4, "Error parsing background color for CTA asset! Will fallback to default background color"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b()Lcom/inmobi/ads/aj$b;
    .locals 5

    .prologue
    .line 588
    const/4 v3, 0x0

    .line 589
    const/4 v2, 0x0

    .line 590
    iget-object v0, p0, Lcom/inmobi/ads/aj;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 591
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/aj$b;

    invoke-virtual {v1}, Lcom/inmobi/ads/aj$b;->a()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 592
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj$b;

    .line 593
    invoke-virtual {v0}, Lcom/inmobi/ads/aj$b;->a()I

    move-result v1

    :goto_1
    move-object v2, v0

    move v3, v1

    .line 595
    goto :goto_0

    .line 596
    :cond_0
    return-object v2

    :cond_1
    move-object v0, v2

    move v1, v3

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 410
    sget-object v0, Lcom/inmobi/ads/aj;->f:Lcom/squareup/picasso/Picasso;

    .line 411
    if-nez v0, :cond_1

    .line 412
    const-class v1, Lcom/inmobi/ads/aj;

    monitor-enter v1

    .line 413
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/aj;->f:Lcom/squareup/picasso/Picasso;

    .line 414
    if-nez v0, :cond_0

    .line 415
    new-instance v0, Lcom/squareup/picasso/Picasso$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/aj;->f:Lcom/squareup/picasso/Picasso;

    .line 417
    :cond_0
    monitor-exit v1

    .line 419
    :cond_1
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 46
    invoke-static {p0}, Lcom/inmobi/ads/aj;->d(Landroid/view/View;)V

    return-void
.end method

.method private static b(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 825
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 826
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 827
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 828
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 543
    sget-object v0, Lcom/inmobi/ads/aj;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj$c;

    .line 544
    if-nez v0, :cond_0

    .line 545
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View type unknown, ignoring recycle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/aj;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/aj$b;

    .line 549
    if-nez v1, :cond_1

    .line 550
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported AssetType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " failed to recycle view"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_1
    iget v0, p0, Lcom/inmobi/ads/aj;->b:I

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_2

    .line 555
    invoke-direct {p0}, Lcom/inmobi/ads/aj;->a()V

    .line 557
    :cond_2
    invoke-virtual {v1, p1}, Lcom/inmobi/ads/aj$b;->a(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private static d(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 839
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 841
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 845
    :goto_0
    return-void

    .line 843
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/view/View;
    .locals 4

    .prologue
    .line 431
    invoke-direct {p0, p2}, Lcom/inmobi/ads/aj;->a(Lcom/inmobi/ads/NativeStrandAsset;)Lcom/inmobi/ads/aj$c;

    move-result-object v0

    .line 432
    if-nez v0, :cond_0

    .line 434
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aj;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported AssetType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset;->a()Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to instantiate view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    .line 443
    :goto_0
    return-object v0

    .line 438
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/aj;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj$b;

    .line 439
    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/aj$b;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeStrandAsset;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 472
    instance-of v0, p1, Lcom/inmobi/ads/ag;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/inmobi/ads/NativeStrandContainerLayout;

    if-eqz v0, :cond_5

    :cond_0
    move-object v0, p1

    .line 473
    check-cast v0, Lcom/inmobi/ads/NativeStrandContainerLayout;

    .line 475
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 476
    invoke-direct {p0, p1}, Lcom/inmobi/ads/aj;->c(Landroid/view/View;)V

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 479
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :goto_1
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandContainerLayout;

    .line 482
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_2
    if-ltz v2, :cond_4

    .line 483
    invoke-virtual {v0, v2}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 485
    invoke-virtual {v0, v2}, Lcom/inmobi/ads/NativeStrandContainerLayout;->removeViewAt(I)V

    .line 486
    instance-of v4, v1, Lcom/inmobi/ads/NativeStrandContainerLayout;

    if-eqz v4, :cond_3

    .line 487
    check-cast v1, Lcom/inmobi/ads/NativeStrandContainerLayout;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :goto_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2

    .line 489
    :cond_3
    invoke-direct {p0, v1}, Lcom/inmobi/ads/aj;->c(Landroid/view/View;)V

    goto :goto_3

    .line 493
    :cond_4
    invoke-direct {p0, v0}, Lcom/inmobi/ads/aj;->c(Landroid/view/View;)V

    goto :goto_1

    .line 498
    :cond_5
    invoke-direct {p0, p1}, Lcom/inmobi/ads/aj;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 453
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 454
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 455
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/aj;->a(Landroid/view/View;)V

    .line 452
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 457
    :cond_0
    return-void
.end method
