.class public Lcom/yandex/metrica/impl/ob/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/cc;


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yandex/metrica/impl/ob/ca;",
            "Lcom/yandex/metrica/IIdentifierCallback$Reason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ay;

.field private final c:Lcom/yandex/metrica/impl/ob/cd;

.field private final d:Lcom/yandex/metrica/impl/ob/bo;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yandex/metrica/IIdentifierCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yandex/metrica/impl/ob/cb$1;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/cb$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/cb;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ay;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->e:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->f:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->g:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Lcom/yandex/metrica/impl/ay;

    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/bo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->d:Lcom/yandex/metrica/impl/ob/bo;

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cb;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-direct {v0, v1, p3}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/bo;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    .line 62
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cb;->e()V

    .line 63
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 121
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cb;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cd;->a(Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/cd;->a(J)V

    .line 124
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cb;->e()V

    .line 127
    return-void

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/yandex/metrica/IIdentifierCallback;)V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cb;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->g:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    sget-object v2, Lcom/yandex/metrica/impl/ob/cd$a;->c:Lcom/yandex/metrica/impl/ob/cd$a;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/cd;->a(Lcom/yandex/metrica/impl/ob/cd$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ay;->d()V

    .line 111
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cb;->e()V

    .line 114
    return-void

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->b()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->a(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/cd;->a(J)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/cd;->a(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/cd;->a(J)V

    .line 148
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ay;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ay;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 10
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 155
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "&"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-wide/16 v6, -0x1

    invoke-static {v1, v6, v7}, Lcom/yandex/metrica/impl/utils/d;->a(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_2

    move v1, v2

    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ay;->a(Ljava/util/Map;)V

    .line 158
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->d:Lcom/yandex/metrica/impl/ob/bo;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/bo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 222
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ca;->b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/ca;

    move-result-object v0

    .line 223
    sget-object v1, Lcom/yandex/metrica/impl/ob/cb;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cb;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/cb;->f:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/cb;->g:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/cb;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/cb;->g:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/IIdentifierCallback;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/IIdentifierCallback;->onRequestError(Lcom/yandex/metrica/IIdentifierCallback$Reason;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/IIdentifierCallback;

    invoke-interface {v1, v0}, Lcom/yandex/metrica/IIdentifierCallback;->onRequestError(Lcom/yandex/metrica/IIdentifierCallback$Reason;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 224
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ay;->d(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    sget-object v1, Lcom/yandex/metrica/impl/ob/cd$a;->c:Lcom/yandex/metrica/impl/ob/cd$a;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/cd;->a(Lcom/yandex/metrica/impl/ob/cd$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->e()Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/ce;->b:Lcom/yandex/metrica/impl/ob/ce;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cd;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->b:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ay;->d()V

    .line 135
    :cond_1
    return-void
.end method

.method e()V
    .locals 7

    .prologue
    .line 176
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 177
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 179
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    .line 180
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 182
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/cb;->e:Ljava/lang/Object;

    monitor-enter v5

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    sget-object v6, Lcom/yandex/metrica/impl/ob/cd$a;->a:Lcom/yandex/metrica/impl/ob/cd$a;

    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/cd;->a(Lcom/yandex/metrica/impl/ob/cd$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 185
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 186
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/cd;->b(Ljava/util/Map;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    sget-object v6, Lcom/yandex/metrica/impl/ob/cd$a;->c:Lcom/yandex/metrica/impl/ob/cd$a;

    invoke-virtual {v0, v6}, Lcom/yandex/metrica/impl/ob/cd;->a(Lcom/yandex/metrica/impl/ob/cd$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->g:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 196
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cb;->c:Lcom/yandex/metrica/impl/ob/cd;

    invoke-virtual {v0, v4}, Lcom/yandex/metrica/impl/ob/cd;->a(Ljava/util/Map;)V

    .line 204
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/IIdentifierCallback;

    .line 207
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v6}, Lcom/yandex/metrica/IIdentifierCallback;->onReceive(Ljava/util/Map;)V

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 210
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/IIdentifierCallback;

    .line 211
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v6}, Lcom/yandex/metrica/IIdentifierCallback;->onReceive(Ljava/util/Map;)V

    goto :goto_1

    .line 214
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 215
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 217
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 218
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 219
    return-void
.end method
