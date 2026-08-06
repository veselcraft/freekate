.class public Lcom/yandex/metrica/impl/ob/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/dh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ct$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ct$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/da;)V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/db;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/db;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ob/ct;-><init>(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/da;)V

    .line 17
    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/da;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/da;->d()Lcom/yandex/metrica/impl/ob/dg;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UUID provider must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/ct$a;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/ct$a;-><init>(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/da;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/ct$a;

    .line 22
    return-void
.end method

.method private b([Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/ct$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ct$a;->a(Lcom/yandex/metrica/impl/ob/ct$a;)Lcom/yandex/metrica/impl/ob/cz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cz;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "System doesn\'t trust certificate chain"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/yandex/metrica/impl/ob/ci; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ct;->c([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/ct$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ct$a;->b(Lcom/yandex/metrica/impl/ob/ct$a;)Lcom/yandex/metrica/impl/ob/cr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cr;->a([Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ct;->d([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ct;->d([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/ct$a;

    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/ct$a;->c(Lcom/yandex/metrica/impl/ob/ct$a;)Lcom/yandex/metrica/impl/ob/cn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/cn;->e()V
    :try_end_1
    .catch Lcom/yandex/metrica/impl/ob/ci; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private c([Ljava/security/cert/X509Certificate;)Z
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/ct$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ct$a;->c(Lcom/yandex/metrica/impl/ob/ct$a;)Lcom/yandex/metrica/impl/ob/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cn;->d()Lcom/yandex/metrica/impl/ob/de;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ct;->d([Ljava/security/cert/X509Certificate;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :catch_0
    move-exception v2

    .line 107
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/de;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :try_start_2
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ct;->d([Ljava/security/cert/X509Certificate;)Z
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 113
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 116
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private d([Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/ct$a;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ct$a;->d(Lcom/yandex/metrica/impl/ob/ct$a;)[Lcom/yandex/metrica/impl/ob/co;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    invoke-interface {v5, p1}, Lcom/yandex/metrica/impl/ob/co;->b([Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v1

    :goto_1
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/ct$a;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ct$a;->d(Lcom/yandex/metrica/impl/ob/ct$a;)[Lcom/yandex/metrica/impl/ob/co;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-interface {v5, p1}, Lcom/yandex/metrica/impl/ob/co;->a([Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "There is blacklisted certificate in chain"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/ct;->e([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0
.end method

.method private e([Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/ct$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ct$a;->d(Lcom/yandex/metrica/impl/ob/ct$a;)[Lcom/yandex/metrica/impl/ob/co;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 142
    invoke-interface {v3, p1}, Lcom/yandex/metrica/impl/ob/co;->c([Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ci;

    new-instance v1, Lcom/yandex/metrica/impl/ob/dc;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/ct$a;

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ct$a;->b(Lcom/yandex/metrica/impl/ob/ct$a;)Lcom/yandex/metrica/impl/ob/cr;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/dc;-><init>([Ljava/security/cert/X509Certificate;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ci;-><init>(Lcom/yandex/metrica/impl/ob/dc;)V

    throw v0
.end method


# virtual methods
.method a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 171
    move v1, v2

    move-object v0, p1

    .line 176
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 183
    add-int/lit8 v3, v1, 0x1

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 184
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    const/4 v4, 0x1

    .line 187
    add-int/lit8 v5, v1, 0x1

    if-eq v3, v5, :cond_4

    .line 189
    if-ne v0, p1, :cond_0

    .line 190
    invoke-virtual {p1}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 192
    :cond_0
    aget-object v5, v0, v3

    .line 193
    add-int/lit8 v6, v1, 0x1

    aget-object v6, v0, v6

    aput-object v6, v0, v3

    .line 194
    add-int/lit8 v3, v1, 0x1

    aput-object v5, v0, v3

    move-object v3, v0

    move v0, v4

    .line 203
    :goto_2
    if-nez v0, :cond_3

    .line 204
    add-int/lit8 v0, v1, 0x1

    array-length v4, v3

    if-eq v0, v4, :cond_1

    .line 205
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 206
    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    .line 213
    :cond_1
    :goto_3
    return-object v3

    .line 183
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 176
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v0

    move v0, v4

    goto :goto_2

    :cond_5
    move-object v3, v0

    move v0, v2

    goto :goto_2

    :cond_6
    move-object v3, v0

    goto :goto_3
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 31
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or zero-length parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ct;->a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/ct;->b([Ljava/security/cert/X509Certificate;)Z

    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Can\'t trust certificate chain"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_2
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ct;->a:Lcom/yandex/metrica/impl/ob/ct$a;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ct$a;->a(Lcom/yandex/metrica/impl/ob/ct$a;)Lcom/yandex/metrica/impl/ob/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cz;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
