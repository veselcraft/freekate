.class public Lcom/inmobi/commons/core/configs/g;
.super Lcom/inmobi/commons/core/configs/a;
.source "RootConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/g$b;,
        Lcom/inmobi/commons/core/configs/g$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/configs/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/inmobi/commons/core/configs/g$b;

.field private f:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/configs/g;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 32
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 24
    iput v1, p0, Lcom/inmobi/commons/core/configs/g;->a:I

    .line 25
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/commons/core/configs/g;->b:I

    .line 26
    iput v1, p0, Lcom/inmobi/commons/core/configs/g;->c:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/inmobi/commons/core/configs/g$b;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/g$b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/g;->e:Lcom/inmobi/commons/core/configs/g$b;

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/g;->f:Lorg/json/JSONObject;

    .line 37
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 151
    sget-object v2, Lcom/inmobi/commons/core/configs/g;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 152
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/g$a;

    .line 154
    invoke-static {v0}, Lcom/inmobi/commons/core/configs/g$a;->a(Lcom/inmobi/commons/core/configs/g$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-static {v0}, Lcom/inmobi/commons/core/configs/g$a;->b(Lcom/inmobi/commons/core/configs/g$a;)J

    move-result-wide v0

    monitor-exit v2

    .line 159
    :goto_1
    return-wide v0

    .line 152
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 159
    :cond_1
    const-wide/32 v0, 0x15180

    monitor-exit v2

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "root"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/inmobi/commons/core/configs/a;->a(Lorg/json/JSONObject;)V

    .line 78
    const-string v0, "maxRetries"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/core/configs/g;->a:I

    .line 79
    const-string v0, "retryInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/core/configs/g;->b:I

    .line 80
    const-string v0, "waitTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/core/configs/g;->c:I

    .line 82
    const-string v0, "latestSdkInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/g;->e:Lcom/inmobi/commons/core/configs/g$b;

    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/core/configs/g$b;->a(Lcom/inmobi/commons/core/configs/g$b;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/g;->e:Lcom/inmobi/commons/core/configs/g$b;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/core/configs/g$b;->b(Lcom/inmobi/commons/core/configs/g$b;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    const-string v0, "components"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 88
    sget-object v2, Lcom/inmobi/commons/core/configs/g;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 91
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 92
    new-instance v4, Lcom/inmobi/commons/core/configs/g$a;

    invoke-direct {v4}, Lcom/inmobi/commons/core/configs/g$a;-><init>()V

    .line 94
    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inmobi/commons/core/configs/g$a;->a(Lcom/inmobi/commons/core/configs/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    const-string v5, "expiry"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/inmobi/commons/core/configs/g$a;->a(Lcom/inmobi/commons/core/configs/g$a;J)J

    .line 96
    const-string v5, "protocol"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inmobi/commons/core/configs/g$a;->b(Lcom/inmobi/commons/core/configs/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    const-string v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/inmobi/commons/core/configs/g$a;->c(Lcom/inmobi/commons/core/configs/g$a;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v3, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    monitor-exit v2

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 176
    sget-object v2, Lcom/inmobi/commons/core/configs/g;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/g$a;

    .line 179
    invoke-static {v0}, Lcom/inmobi/commons/core/configs/g$a;->a(Lcom/inmobi/commons/core/configs/g$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-static {v0}, Lcom/inmobi/commons/core/configs/g$a;->d(Lcom/inmobi/commons/core/configs/g$a;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    .line 184
    :goto_1
    return-object v0

    .line 177
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 184
    :cond_1
    const-string v0, ""

    monitor-exit v2

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-super {p0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 47
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 49
    const-string v0, "maxRetries"

    iget v1, p0, Lcom/inmobi/commons/core/configs/g;->a:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    const-string v0, "retryInterval"

    iget v1, p0, Lcom/inmobi/commons/core/configs/g;->b:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    const-string v0, "waitTime"

    iget v1, p0, Lcom/inmobi/commons/core/configs/g;->c:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    const-string v1, "version"

    iget-object v4, p0, Lcom/inmobi/commons/core/configs/g;->e:Lcom/inmobi/commons/core/configs/g$b;

    invoke-static {v4}, Lcom/inmobi/commons/core/configs/g$b;->a(Lcom/inmobi/commons/core/configs/g$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "url"

    iget-object v4, p0, Lcom/inmobi/commons/core/configs/g;->e:Lcom/inmobi/commons/core/configs/g$b;

    invoke-static {v4}, Lcom/inmobi/commons/core/configs/g$b;->b(Lcom/inmobi/commons/core/configs/g$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v1, "latestSdkInfo"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    sget-object v4, Lcom/inmobi/commons/core/configs/g;->g:Ljava/lang/Object;

    monitor-enter v4

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 60
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 61
    const-string v6, "type"

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/g$a;

    invoke-static {v0}, Lcom/inmobi/commons/core/configs/g$a;->a(Lcom/inmobi/commons/core/configs/g$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v6, "expiry"

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/g$a;

    invoke-static {v0}, Lcom/inmobi/commons/core/configs/g$a;->b(Lcom/inmobi/commons/core/configs/g$a;)J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 63
    const-string v6, "protocol"

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/g$a;

    invoke-static {v0}, Lcom/inmobi/commons/core/configs/g$a;->c(Lcom/inmobi/commons/core/configs/g$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v6, "url"

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/g$a;

    invoke-static {v0}, Lcom/inmobi/commons/core/configs/g$a;->d(Lcom/inmobi/commons/core/configs/g$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const-string v0, "components"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    return-object v2

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 142
    :goto_0
    return v0

    .line 110
    :cond_0
    iget v0, p0, Lcom/inmobi/commons/core/configs/g;->a:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/inmobi/commons/core/configs/g;->b:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/inmobi/commons/core/configs/g;->c:I

    if-gez v0, :cond_2

    :cond_1
    move v0, v1

    .line 111
    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->e:Lcom/inmobi/commons/core/configs/g$b;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->e:Lcom/inmobi/commons/core/configs/g$b;

    .line 115
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->e:Lcom/inmobi/commons/core/configs/g$b;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 116
    goto :goto_0

    .line 119
    :cond_4
    sget-object v3, Lcom/inmobi/commons/core/configs/g;->g:Ljava/lang/Object;

    monitor-enter v3

    move v2, v1

    .line 120
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    .line 121
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/g$a;

    .line 123
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 124
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$a;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$a;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xd2f00

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 128
    :cond_6
    monitor-exit v3

    move v0, v1

    goto/16 :goto_0

    .line 131
    :cond_7
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 132
    monitor-exit v3

    move v0, v1

    goto/16 :goto_0

    .line 135
    :cond_8
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$a;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$a;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g$a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 136
    :cond_9
    monitor-exit v3

    move v0, v1

    goto/16 :goto_0

    .line 120
    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 140
    :cond_b
    monitor-exit v3

    .line 142
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Lcom/inmobi/commons/core/configs/a;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/inmobi/commons/core/configs/g;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/g;-><init>()V

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/inmobi/commons/core/configs/g;->a:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/inmobi/commons/core/configs/g;->b:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/inmobi/commons/core/configs/g;->c:I

    return v0
.end method

.method public h()Lcom/inmobi/commons/core/configs/g$b;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->e:Lcom/inmobi/commons/core/configs/g$b;

    return-object v0
.end method

.method public i()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/g;->f:Lorg/json/JSONObject;

    return-object v0
.end method
