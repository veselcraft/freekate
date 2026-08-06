.class Lcom/yandex/metrica/impl/bh;
.super Lcom/yandex/metrica/impl/ah;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/az;

.field private b:Landroid/content/Context;

.field private c:Lcom/yandex/metrica/impl/ob/i;

.field private l:Lcom/yandex/metrica/impl/ob/bs;

.field private m:Z

.field private n:Lcom/yandex/metrica/impl/ob/ca;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ah;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bh;->m:Z

    .line 44
    iput-object p1, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/i;

    .line 45
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->m()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->b:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->h()Lcom/yandex/metrica/impl/az;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    .line 47
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/i;->w()Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->l:Lcom/yandex/metrica/impl/ob/bs;

    .line 48
    return-void
.end method

.method private static a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->l:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/bs;->b(J)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bs;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Landroid/net/Uri$Builder;)V
    .locals 4

    .prologue
    .line 77
    const-string v0, "analytics/startup"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->c()Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->e()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 83
    :cond_0
    :goto_0
    const-string v1, "deviceid"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    const-string v0, "app_platform"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 86
    const-string v0, "protocol_version"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    const-string v0, "analytics_sdk_version"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    const-string v0, "analytics_sdk_version_name"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    const-string v0, "model"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    const-string v0, "manufacturer"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    const-string v0, "os_version"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 92
    const-string v0, "screen_width"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    const-string v0, "screen_height"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    const-string v0, "screen_dpi"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    const-string v0, "scalefactor"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->s()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    const-string v0, "locale"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 97
    const-string v0, "device_type"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    const-string v0, "query_hosts"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    const-string v0, "features"

    const-string v1, "easy_collecting"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->v()Ljava/util/Map;

    move-result-object v1

    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->w()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->l:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bs;->a()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_1
    invoke-static {v1}, Lcom/yandex/metrica/impl/bl;->a(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 107
    const-string v2, "distribution_customization"

    const-string v3, "1"

    invoke-virtual {p1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    const-string v2, "clids_set"

    invoke-static {v1}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/yandex/metrica/impl/bh;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/i;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    const-string v1, "install_referrer"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 115
    :cond_2
    const-string v0, "uuid"

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/yandex/metrica/impl/bh;->a(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    :cond_3
    move-object v0, v1

    .line 81
    goto/16 :goto_0
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/az;)V
    .locals 6

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->o()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->c()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->e()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/yandex/metrica/impl/bh;->a(J)V

    .line 198
    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->l:Lcom/yandex/metrica/impl/ob/bs;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/bs;->k(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/bs;->l(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bs;->m(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bs;->n(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bs;->o(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bs;->p(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bs;->q(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bs;->j(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bs;->b(Z)Lcom/yandex/metrica/impl/ob/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bs;->k()V

    .line 210
    invoke-static {}, Lcom/yandex/metrica/impl/ob/bi;->a()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/az;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yandex.metrica.intent.action.SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CAUSE"

    const-string v2, "CAUSE_DEVICE_ID"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SYNC_TO_PKG"

    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/i;->l()Lcom/yandex/metrica/impl/ob/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SYNC_DATA"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SYNC_DATA_2"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/az;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/bh;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bh;->a(Z)V

    .line 55
    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/az;->c(Lcom/yandex/metrica/impl/ob/i;)V

    .line 57
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/az;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bh;->a(Landroid/net/Uri$Builder;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/bh;->a(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    .line 62
    :cond_0
    return v0
.end method

.method public c()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/bh;->k:Z

    .line 128
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iput-boolean v6, p0, Lcom/yandex/metrica/impl/bh;->k:Z

    .line 150
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bh;->k:Z

    return v0

    .line 130
    :cond_1
    const/16 v0, 0xc8

    iget v1, p0, Lcom/yandex/metrica/impl/bh;->h:I

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->j()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->v()Ljava/util/Map;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->i:[B

    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a([B)Lcom/yandex/metrica/impl/bg$a;

    move-result-object v1

    .line 136
    sget-object v2, Lcom/yandex/metrica/impl/bg$a$a;->b:Lcom/yandex/metrica/impl/bg$a$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/bg$a;->i()Lcom/yandex/metrica/impl/bg$a$a;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 137
    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v2, v1}, Lcom/yandex/metrica/impl/az;->a(Lcom/yandex/metrica/impl/bg$a;)V

    .line 138
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/bh;->k()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/bg;->a(Ljava/util/Map;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/yandex/metrica/impl/utils/f;->a()Lcom/yandex/metrica/impl/utils/f;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/yandex/metrica/impl/utils/f;->a(J)V

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-static {}, Lcom/yandex/metrica/impl/o$b;->a()Lcom/yandex/metrica/impl/o;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/metrica/impl/bh;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/az;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/o;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/az;->b(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/bh;->a(Lcom/yandex/metrica/impl/az;)V

    .line 142
    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/az;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/i;

    invoke-interface {v1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/i;->a(Z)V

    .line 143
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->k()Landroid/os/ResultReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/i;->a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/az;)V

    .line 144
    iput-boolean v6, p0, Lcom/yandex/metrica/impl/bh;->k:Z

    goto :goto_0

    .line 146
    :cond_3
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->c:Lcom/yandex/metrica/impl/ob/ca;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->n:Lcom/yandex/metrica/impl/ob/ca;

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->l:Lcom/yandex/metrica/impl/ob/bs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/bs;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yandex/metrica/impl/ob/bi;->a()Lcom/yandex/metrica/impl/ob/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bi;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bh;->k:Z

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->n:Lcom/yandex/metrica/impl/ob/ca;

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/ca;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->n:Lcom/yandex/metrica/impl/ob/ca;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->c:Lcom/yandex/metrica/impl/ob/i;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i;->k()Landroid/os/ResultReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/bh;->n:Lcom/yandex/metrica/impl/ob/ca;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/i;->a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ob/ca;)V

    .line 174
    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->b:Lcom/yandex/metrica/impl/ob/ca;

    iput-object v0, p0, Lcom/yandex/metrica/impl/bh;->n:Lcom/yandex/metrica/impl/ob/ca;

    .line 162
    return-void
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method n()Z
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/bh;->l:Lcom/yandex/metrica/impl/ob/bs;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/bs;->a(J)J

    move-result-wide v0

    .line 73
    iget-object v2, p0, Lcom/yandex/metrica/impl/bh;->a:Lcom/yandex/metrica/impl/az;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/az;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized o()Z
    .locals 1

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/bh;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
