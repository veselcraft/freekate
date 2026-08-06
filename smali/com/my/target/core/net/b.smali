.class public final Lcom/my/target/core/net/b;
.super Ljava/lang/Object;
.source "MediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/net/b$b;,
        Lcom/my/target/core/net/b$a;,
        Lcom/my/target/core/net/b$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/my/target/core/async/commands/b",
            "<",
            "Lcom/my/target/core/models/h;",
            ">;",
            "Lcom/my/target/core/net/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/my/target/core/async/commands/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/my/target/core/async/commands/b$a",
            "<",
            "Lcom/my/target/core/models/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/net/b;->a:Ljava/util/HashMap;

    .line 80
    new-instance v0, Lcom/my/target/core/net/b$1;

    invoke-direct {v0, p0}, Lcom/my/target/core/net/b$1;-><init>(Lcom/my/target/core/net/b;)V

    iput-object v0, p0, Lcom/my/target/core/net/b;->b:Lcom/my/target/core/async/commands/b$a;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/my/target/core/net/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/my/target/core/net/b;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/my/target/core/net/b$b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/my/target/core/net/b;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/my/target/core/net/b;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Lcom/my/target/core/models/h;Lcom/my/target/core/net/b$c;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 70
    invoke-interface {p1}, Lcom/my/target/core/models/h;->getData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1104
    new-instance v0, Lcom/my/target/core/async/commands/f;

    invoke-direct {v0, p1, p3}, Lcom/my/target/core/async/commands/f;-><init>(Lcom/my/target/core/models/h;Landroid/content/Context;)V

    .line 73
    iget-object v1, p0, Lcom/my/target/core/net/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/my/target/core/net/b;->b:Lcom/my/target/core/async/commands/b$a;

    invoke-interface {v0, v1}, Lcom/my/target/core/async/commands/b;->a(Lcom/my/target/core/async/commands/b$a;)V

    .line 75
    invoke-interface {v0}, Lcom/my/target/core/async/commands/b;->b()V

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {p2, p1}, Lcom/my/target/core/net/b;->b(Lcom/my/target/core/net/b$c;Lcom/my/target/core/models/h;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/my/target/core/net/b$c;Lcom/my/target/core/models/h;)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/my/target/core/net/b;->b(Lcom/my/target/core/net/b$c;Lcom/my/target/core/models/h;)V

    return-void
.end method

.method private static b(Lcom/my/target/core/net/b$c;Lcom/my/target/core/models/h;)V
    .locals 3

    .prologue
    .line 92
    iget v0, p0, Lcom/my/target/core/net/b$c;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/my/target/core/net/b$c;->c:I

    .line 93
    instance-of v0, p1, Lcom/my/target/nativeads/models/ImageData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/core/net/b$c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/my/target/core/models/h;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/my/target/core/net/b$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    instance-of v1, v0, Lcom/my/target/core/ui/views/CacheImageView;

    if-eqz v1, :cond_2

    .line 102
    check-cast v0, Lcom/my/target/core/ui/views/CacheImageView;

    check-cast p1, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {p1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/my/target/core/ui/views/CacheImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 115
    :cond_0
    :goto_0
    iget v0, p0, Lcom/my/target/core/net/b$c;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/net/b$c;->a:Lcom/my/target/core/net/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/my/target/core/net/b$c;->a:Lcom/my/target/core/net/b$a;

    invoke-interface {v0}, Lcom/my/target/core/net/b$a;->onLoad()V

    .line 116
    :cond_1
    return-void

    .line 106
    :cond_2
    check-cast p1, Lcom/my/target/nativeads/models/ImageData;

    invoke-virtual {p1}, Lcom/my/target/nativeads/models/ImageData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 111
    :cond_3
    const-string v0, "Unable to set image: not main thread"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 63
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v0, Lcom/my/target/core/net/b$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/my/target/core/net/b$c;-><init>(Lcom/my/target/core/net/b$a;Landroid/widget/ImageView;B)V

    .line 65
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/my/target/core/net/b;->a(Lcom/my/target/core/models/h;Lcom/my/target/core/net/b$c;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Landroid/content/Context;Lcom/my/target/core/net/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/my/target/core/models/h;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/my/target/core/net/b$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    if-nez p2, :cond_1

    .line 36
    const-string v0, "Unable to load media: null context"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void

    .line 40
    :cond_1
    new-instance v1, Lcom/my/target/core/net/b$c;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v1, p3, v0, v2}, Lcom/my/target/core/net/b$c;-><init>(Lcom/my/target/core/net/b$a;Landroid/widget/ImageView;B)V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/my/target/core/net/b$c;->c:I

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/h;

    .line 45
    invoke-direct {p0, v0, v1, p2}, Lcom/my/target/core/net/b;->a(Lcom/my/target/core/models/h;Lcom/my/target/core/net/b$c;Landroid/content/Context;)V

    goto :goto_0
.end method
