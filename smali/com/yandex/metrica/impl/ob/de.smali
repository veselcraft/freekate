.class Lcom/yandex/metrica/impl/ob/de;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/yandex/metrica/impl/ob/cy;

.field private c:Lcom/yandex/metrica/impl/ob/cy;

.field private d:Lcom/yandex/metrica/impl/ob/dp;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yandex/metrica/impl/ob/df;

.field private g:Ljava/lang/String;

.field private h:Lcom/yandex/metrica/impl/ob/dg;

.field private i:J

.field private final j:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/yandex/metrica/impl/ob/de;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/de;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/db;Lcom/yandex/metrica/impl/ob/cv;Lcom/yandex/metrica/impl/ob/dp;Lcom/yandex/metrica/impl/ob/da;)V
    .locals 4

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/cv;->c()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Lcom/yandex/metrica/impl/ob/cy;

    .line 50
    invoke-interface {p2}, Lcom/yandex/metrica/impl/ob/cv;->a()Lcom/yandex/metrica/impl/ob/cy;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->c:Lcom/yandex/metrica/impl/ob/cy;

    .line 51
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/de;->d:Lcom/yandex/metrica/impl/ob/dp;

    .line 52
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/da;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->g:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->j:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/db;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Ljava/util/Map;

    const-string v1, "app_platform"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Ljava/util/Map;

    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Ljava/util/Map;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Ljava/util/Map;

    const-string v1, "app_version"

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/db;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/da;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/de;->i:J

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/de;Lcom/yandex/metrica/impl/ob/df;)Lcom/yandex/metrica/impl/ob/df;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/de;->f:Lcom/yandex/metrica/impl/ob/df;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/de;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/de;->h()V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lcom/yandex/metrica/impl/ob/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/cy;->a()V

    .line 153
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/cy;->a(Ljava/lang/String;)Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/cy;J)Z
    .locals 5

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cy;->c()J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/cy;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/de;Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/de;->a(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    .line 138
    :try_start_0
    const-string v0, "pins-sha256"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->b:Lcom/yandex/metrica/impl/ob/cy;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/de;->a(Lorg/json/JSONArray;Lcom/yandex/metrica/impl/ob/cy;)V

    .line 141
    const-string v0, "blacklist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->c:Lcom/yandex/metrica/impl/ob/cy;

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/de;->a(Lorg/json/JSONArray;Lcom/yandex/metrica/impl/ob/cy;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    sget-object v0, Lcom/yandex/metrica/impl/ob/de;->a:Ljava/lang/String;

    const-string v1, "pins have been updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t update pins: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yandex/metrica/impl/ob/de;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ds;->a()Lcom/yandex/metrica/impl/ob/ds;

    move-result-object v0

    .line 126
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/de;->i()Lcom/yandex/metrica/impl/ob/df;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/de;->d:Lcom/yandex/metrica/impl/ob/dp;

    invoke-virtual {v2, v1, v0, v0}, Lcom/yandex/metrica/impl/ob/dp;->a(Lcom/yandex/metrica/impl/ob/dr;Lcom/yandex/metrica/impl/ob/dr$b;Lcom/yandex/metrica/impl/ob/dr$a;)V

    .line 129
    const-wide/16 v2, 0x7530

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/yandex/metrica/impl/ob/ds;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    :goto_1
    sget-object v1, Lcom/yandex/metrica/impl/ob/de;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t update pins on error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private h()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Lcom/yandex/metrica/impl/ob/cy;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cy;->d()V

    .line 160
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->c:Lcom/yandex/metrica/impl/ob/cy;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/cy;->d()V

    .line 161
    return-void
.end method

.method private i()Lcom/yandex/metrica/impl/ob/df;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->h:Lcom/yandex/metrica/impl/ob/dg;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/dg;->a()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->e:Ljava/util/Map;

    const-string v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :goto_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/df;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/de;->e:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/df;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->e:Ljava/util/Map;

    const-string v2, "uuid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->d:Lcom/yandex/metrica/impl/ob/dp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->j:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method declared-synchronized a(Lcom/yandex/metrica/impl/ob/dg;)V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/de;->h:Lcom/yandex/metrica/impl/ob/dg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()Z
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/de;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/yandex/metrica/impl/ob/de;->a:Ljava/lang/String;

    const-string v1, "starting pins update on error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/de;->g()Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/de;->a(Lorg/json/JSONObject;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 74
    :goto_0
    monitor-exit p0

    return v0

    .line 71
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/de;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .locals 4

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/de;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/de;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/yandex/metrica/impl/ob/de;->a:Ljava/lang/String;

    const-string v1, "starting pins update on schedule"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/de;->i()Lcom/yandex/metrica/impl/ob/df;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->f:Lcom/yandex/metrica/impl/ob/df;

    .line 81
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->d:Lcom/yandex/metrica/impl/ob/dp;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/de;->f:Lcom/yandex/metrica/impl/ob/df;

    new-instance v2, Lcom/yandex/metrica/impl/ob/de$1;

    invoke-direct {v2, p0}, Lcom/yandex/metrica/impl/ob/de$1;-><init>(Lcom/yandex/metrica/impl/ob/de;)V

    new-instance v3, Lcom/yandex/metrica/impl/ob/de$2;

    invoke-direct {v3, p0}, Lcom/yandex/metrica/impl/ob/de$2;-><init>(Lcom/yandex/metrica/impl/ob/de;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/ob/dp;->a(Lcom/yandex/metrica/impl/ob/dr;Lcom/yandex/metrica/impl/ob/dr$b;Lcom/yandex/metrica/impl/ob/dr$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()Z
    .locals 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/de;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->b:Lcom/yandex/metrica/impl/ob/cy;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/de;->i:J

    .line 115
    invoke-static {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/de;->a(Lcom/yandex/metrica/impl/ob/cy;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->c:Lcom/yandex/metrica/impl/ob/cy;

    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/de;->i:J

    invoke-static {v0, v2, v3}, Lcom/yandex/metrica/impl/ob/de;->a(Lcom/yandex/metrica/impl/ob/cy;J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/de;->f:Lcom/yandex/metrica/impl/ob/df;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
