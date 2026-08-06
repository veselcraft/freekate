.class public Lcom/yandex/metrica/impl/ob/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bi$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Lcom/yandex/metrica/impl/ob/dg;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/yandex/metrica/impl/ob/bi$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/bi$1;-><init>(Lcom/yandex/metrica/impl/ob/bi;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->d:Lcom/yandex/metrica/impl/ob/dg;

    .line 48
    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/bi;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/yandex/metrica/impl/ob/bi$a;->a:Lcom/yandex/metrica/impl/ob/bi;

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/bi;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static d()Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/a;->a()[Ljava/lang/String;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 111
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/cu;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 70
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "https://certificate.mobile.yandex.net/api/v1/pins"

    move-object v3, v2

    .line 71
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/bi;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    :goto_2
    if-eqz v0, :cond_0

    .line 72
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bi;->b:Ljava/lang/String;

    .line 73
    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/yandex/metrica/impl/ob/da;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bi;->d:Lcom/yandex/metrica/impl/ob/dg;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/da;-><init>(Lcom/yandex/metrica/impl/ob/dg;ZZ)V

    .line 75
    invoke-static {}, Lcom/yandex/metrica/impl/ob/bi;->d()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/da;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 82
    new-instance v1, Lcom/yandex/metrica/impl/ob/ct;

    invoke-direct {v1, p1, v0}, Lcom/yandex/metrica/impl/ob/ct;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/da;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    new-instance v0, Lcom/yandex/metrica/impl/ob/cw;

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/cw;-><init>(Lcom/yandex/metrica/impl/ob/dh;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cw;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_0
    :goto_3
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api/v1/pins"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 71
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bi;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
