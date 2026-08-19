.class public final Lcom/flurry/sdk/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/eq;


# static fields
.field private static a:Lcom/flurry/sdk/em;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/eq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/flurry/sdk/em;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/em;->b:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/em;
    .locals 2

    const-class v0, Lcom/flurry/sdk/em;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/em;->a:Lcom/flurry/sdk/em;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/flurry/sdk/em;

    invoke-direct {v1}, Lcom/flurry/sdk/em;-><init>()V

    sput-object v1, Lcom/flurry/sdk/em;->a:Lcom/flurry/sdk/em;

    .line 37
    :cond_0
    sget-object v1, Lcom/flurry/sdk/em;->a:Lcom/flurry/sdk/em;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/eq;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v1, Lcom/flurry/sdk/en;

    const-string v2, "com.flurry.android.impl.analytics.FlurryAnalyticsModule"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/flurry/sdk/en;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/flurry/sdk/en;

    const-string v2, "com.flurry.android.impl.ads.FlurryAdModule"

    invoke-direct {v1, v2, v3}, Lcom/flurry/sdk/en;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/dg;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/flurry/sdk/em;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/eq;

    .line 68
    invoke-interface {v1, p1}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/dg;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/em;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/eq;

    .line 47
    invoke-interface {v1, p1, p2}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/flurry/sdk/em;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/eq;

    .line 54
    invoke-interface {v1, p1, p2}, Lcom/flurry/sdk/eq;->b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/flurry/sdk/em;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/eq;

    .line 61
    invoke-interface {v1, p1, p2}, Lcom/flurry/sdk/eq;->c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method
