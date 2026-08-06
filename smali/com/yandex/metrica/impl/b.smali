.class public Lcom/yandex/metrica/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/b$a;
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:J

.field private c:Z

.field private d:Lcom/yandex/metrica/impl/utils/b$a;

.field private final e:Lcom/yandex/metrica/impl/utils/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    .line 74
    invoke-static {}, Lcom/yandex/metrica/impl/utils/b$a;->d()Lcom/yandex/metrica/impl/utils/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/utils/b$a;

    .line 75
    new-instance v0, Lcom/yandex/metrica/impl/utils/b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/b;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/b;->e:Lcom/yandex/metrica/impl/utils/b;

    .line 78
    iput-wide p2, p0, Lcom/yandex/metrica/impl/b;->b:J

    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/b;->b:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/yandex/metrica/impl/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 125
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->e:Lcom/yandex/metrica/impl/utils/b;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/utils/b$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/b$a;->b()I

    move-result v1

    const-string v2, "App Environment"

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/utils/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->e:Lcom/yandex/metrica/impl/utils/b;

    iget-object v2, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/utils/b$a;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/utils/b$a;->c()I

    move-result v2

    const-string v3, "App Environment"

    invoke-virtual {v1, p2, v2, v3}, Lcom/yandex/metrica/impl/utils/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_2
    if-eqz v1, :cond_1

    .line 108
    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/yandex/metrica/impl/b$a;
    .locals 4

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/b;->c:Z

    if-eqz v0, :cond_0

    .line 142
    iget-wide v0, p0, Lcom/yandex/metrica/impl/b;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/b;->b:J

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/b;->c:Z

    .line 145
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/b$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/yandex/metrica/impl/b;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/b$a;-><init>(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/utils/b$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/b$a;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/utils/b$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/b$a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/b;->e:Lcom/yandex/metrica/impl/utils/b;

    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->d:Lcom/yandex/metrica/impl/utils/b$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/b$a;->a()I

    move-result v1

    const-string v2, "App Environment"

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/utils/b;->b(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Map size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/yandex/metrica/impl/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ". Is changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ". Current revision "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-wide v2, p0, Lcom/yandex/metrica/impl/b;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
