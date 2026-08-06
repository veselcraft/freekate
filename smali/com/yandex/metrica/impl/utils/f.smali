.class public Lcom/yandex/metrica/impl/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/utils/f$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private b:Lcom/yandex/metrica/impl/ob/br;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yandex/metrica/impl/utils/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/utils/f;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/yandex/metrica/impl/utils/f$a;->a:Lcom/yandex/metrica/impl/utils/f;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .locals 5

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/utils/f;->a:J

    .line 47
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/f;->b:Lcom/yandex/metrica/impl/ob/br;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/f;->b:Lcom/yandex/metrica/impl/ob/br;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/utils/f;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/br;->a(J)Lcom/yandex/metrica/impl/ob/br;

    .line 49
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/f;->b:Lcom/yandex/metrica/impl/ob/br;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/br;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 37
    :try_start_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/br;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/br;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/utils/f;->b:Lcom/yandex/metrica/impl/ob/br;

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/f;->b:Lcom/yandex/metrica/impl/ob/br;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/br;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/utils/f;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()J
    .locals 2

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/yandex/metrica/impl/utils/f;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
