.class public Lcom/yandex/mobile/ads/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/an$a;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/r;

.field private b:Lcom/yandex/mobile/ads/v;

.field private c:Lcom/yandex/mobile/ads/AdRequest;

.field private d:Lcom/yandex/mobile/ads/nativeads/ar;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/r;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/yandex/mobile/ads/e;->k:I

    .line 40
    sget v0, Lcom/yandex/mobile/ads/h$a;->b:I

    iput v0, p0, Lcom/yandex/mobile/ads/e;->l:I

    .line 43
    iput-object p1, p0, Lcom/yandex/mobile/ads/e;->a:Lcom/yandex/mobile/ads/r;

    .line 44
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/r;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->a:Lcom/yandex/mobile/ads/r;

    return-object v0
.end method

.method public a(Lcom/yandex/mobile/ads/AdRequest;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yandex/mobile/ads/e;->c:Lcom/yandex/mobile/ads/AdRequest;

    .line 72
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/nativeads/ar;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/yandex/mobile/ads/e;->d:Lcom/yandex/mobile/ads/nativeads/ar;

    .line 156
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/v;)V
    .locals 2

    .prologue
    .line 61
    const-string v0, "Ad size can\'t be null or empty."

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->b:Lcom/yandex/mobile/ads/v;

    const-string v1, "Ad size can\'t be set twice."

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    iput-object p1, p0, Lcom/yandex/mobile/ads/e;->b:Lcom/yandex/mobile/ads/v;

    .line 64
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/yandex/mobile/ads/e;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
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
    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 166
    const-string v0, "yandex_mobile_metrica_uuid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/e;->a(Ljava/lang/String;)V

    .line 167
    const-string v0, "yandex_mobile_metrica_get_ad_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/e;->c(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/e;->j:Z

    .line 116
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/yandex/mobile/ads/e;->i:[Ljava/lang/String;

    .line 148
    return-void
.end method

.method public b()Lcom/yandex/mobile/ads/v;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->b:Lcom/yandex/mobile/ads/v;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    const-string v0, "Block ID can\'t be null or empty."

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->f:Ljava/lang/String;

    const-string v1, "Block ID can\'t be set twice."

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/yandex/mobile/ads/e;->f:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public c()Lcom/yandex/mobile/ads/v$a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->b:Lcom/yandex/mobile/ads/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->b:Lcom/yandex/mobile/ads/v;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/v;->a()Lcom/yandex/mobile/ads/v$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yandex/mobile/ads/e;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/yandex/mobile/ads/AdRequest;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->c:Lcom/yandex/mobile/ads/AdRequest;

    return-object v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/e;->j:Z

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/yandex/mobile/ads/e;->k:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/yandex/mobile/ads/e;->l:I

    return v0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized m()Z
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

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

.method declared-synchronized n()Z
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

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

.method public o()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->i:[Ljava/lang/String;

    return-object v0
.end method

.method public p()Lcom/yandex/mobile/ads/nativeads/ar;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yandex/mobile/ads/e;->d:Lcom/yandex/mobile/ads/nativeads/ar;

    return-object v0
.end method
