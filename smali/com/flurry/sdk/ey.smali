.class public final Lcom/flurry/sdk/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fc;


# static fields
.field private static a:Lcom/flurry/sdk/ey;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/flurry/sdk/ey;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ey;->b:Ljava/util/List;

    .line 40
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ey;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/flurry/sdk/ey;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ey;->a:Lcom/flurry/sdk/ey;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/flurry/sdk/ey;

    invoke-direct {v0}, Lcom/flurry/sdk/ey;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ey;->a:Lcom/flurry/sdk/ey;

    .line 35
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ey;->a:Lcom/flurry/sdk/ey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/fc;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v1, Lcom/flurry/sdk/ez;

    const-string v2, "com.flurry.android.impl.appcloud.AppCloudModule"

    invoke-direct {v1, v2, v3}, Lcom/flurry/sdk/ez;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v1, Lcom/flurry/sdk/ez;

    const-string v2, "com.flurry.android.impl.ads.FlurryAdModule"

    invoke-direct {v1, v2, v3}, Lcom/flurry/sdk/ez;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public f(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fc;

    .line 45
    invoke-interface {v0, p1}, Lcom/flurry/sdk/fc;->f(Landroid/content/Context;)V

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flurry/sdk/ey;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fc;

    .line 52
    invoke-interface {v0, p1}, Lcom/flurry/sdk/fc;->g(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
