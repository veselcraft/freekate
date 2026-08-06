.class Lcom/yandex/metrica/impl/ob/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/cx$a;
    }
.end annotation


# static fields
.field private static a:Lcom/yandex/metrica/impl/ob/de;

.field private static b:Lcom/yandex/metrica/impl/ob/cv;

.field private static c:Lcom/yandex/metrica/impl/ob/dp;


# direct methods
.method static declared-synchronized a(Lcom/yandex/metrica/impl/ob/db;)Lcom/yandex/metrica/impl/ob/de;
    .locals 5

    .prologue
    .line 17
    const-class v1, Lcom/yandex/metrica/impl/ob/cx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/cx;->a:Lcom/yandex/metrica/impl/ob/de;

    if-nez v0, :cond_0

    .line 18
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/cx;->b(Lcom/yandex/metrica/impl/ob/db;)Lcom/yandex/metrica/impl/ob/cv;

    move-result-object v0

    .line 19
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/cx;->c(Lcom/yandex/metrica/impl/ob/db;)Lcom/yandex/metrica/impl/ob/dp;

    move-result-object v2

    .line 20
    new-instance v3, Lcom/yandex/metrica/impl/ob/da;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/da;-><init>()V

    .line 21
    new-instance v4, Lcom/yandex/metrica/impl/ob/de;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/de;-><init>(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/cv;Lcom/yandex/metrica/impl/ob/dp;Lcom/yandex/metrica/impl/ob/da;)V

    sput-object v4, Lcom/yandex/metrica/impl/ob/cx;->a:Lcom/yandex/metrica/impl/ob/de;

    .line 23
    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/cx;->a:Lcom/yandex/metrica/impl/ob/de;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized b(Lcom/yandex/metrica/impl/ob/db;)Lcom/yandex/metrica/impl/ob/cv;
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/yandex/metrica/impl/ob/cx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/cx;->b:Lcom/yandex/metrica/impl/ob/cv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 29
    :try_start_1
    new-instance v0, Lcom/yandex/metrica/impl/ob/cx$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/yandex/metrica/impl/ob/cx$a;-><init>(Lcom/yandex/metrica/impl/ob/db;B)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/cx;->b:Lcom/yandex/metrica/impl/ob/cv;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/yandex/metrica/impl/ob/cx;->b:Lcom/yandex/metrica/impl/ob/cv;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/yandex/metrica/impl/ob/cq;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cq;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/ob/cx;->b:Lcom/yandex/metrica/impl/ob/cv;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized c(Lcom/yandex/metrica/impl/ob/db;)Lcom/yandex/metrica/impl/ob/dp;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/yandex/metrica/impl/ob/cx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/cx;->c:Lcom/yandex/metrica/impl/ob/dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 40
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/db;->d()Lcom/yandex/metrica/impl/ob/dp;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/cx;->c:Lcom/yandex/metrica/impl/ob/dp;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/yandex/metrica/impl/ob/cx;->c:Lcom/yandex/metrica/impl/ob/dp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
