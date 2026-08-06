.class public Lcom/inmobi/commons/core/utilities/info/f;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/inmobi/commons/core/utilities/info/f;

.field private static c:Ljava/lang/Object;


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/inmobi/commons/core/utilities/info/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/f;->a:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/f;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a()Lcom/inmobi/commons/core/utilities/info/f;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/f;->b:Lcom/inmobi/commons/core/utilities/info/f;

    .line 26
    if-nez v0, :cond_1

    .line 27
    sget-object v1, Lcom/inmobi/commons/core/utilities/info/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/f;->b:Lcom/inmobi/commons/core/utilities/info/f;

    .line 29
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/inmobi/commons/core/utilities/info/f;

    invoke-direct {v0}, Lcom/inmobi/commons/core/utilities/info/f;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/utilities/info/f;->b:Lcom/inmobi/commons/core/utilities/info/f;

    .line 31
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/f;->b:Lcom/inmobi/commons/core/utilities/info/f;

    .line 33
    :cond_0
    monitor-exit v1

    .line 35
    :cond_1
    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/info/f;->d:Ljava/lang/String;

    .line 77
    iput-wide v2, p0, Lcom/inmobi/commons/core/utilities/info/f;->e:J

    .line 78
    iput-wide v2, p0, Lcom/inmobi/commons/core/utilities/info/f;->f:J

    .line 79
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/inmobi/commons/core/utilities/info/f;->e:J

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/inmobi/commons/core/utilities/info/f;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/inmobi/commons/core/utilities/info/f;->g:Z

    .line 70
    iget-boolean v0, p0, Lcom/inmobi/commons/core/utilities/info/f;->g:Z

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/inmobi/commons/core/utilities/info/f;->d()V

    .line 73
    :cond_0
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 55
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :try_start_0
    const-string v0, "sid"

    iget-object v2, p0, Lcom/inmobi/commons/core/utilities/info/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v0, "s-ts"

    iget-wide v2, p0, Lcom/inmobi/commons/core/utilities/info/f;->e:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    const-string v0, "e-ts"

    iget-wide v2, p0, Lcom/inmobi/commons/core/utilities/info/f;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/utilities/info/f;->a:Ljava/lang/String;

    const-string v4, "Problem converting session object to Json."

    invoke-static {v2, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/inmobi/commons/core/utilities/info/f;->f:J

    .line 52
    return-void
.end method

.method public c()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    iget-boolean v1, p0, Lcom/inmobi/commons/core/utilities/info/f;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/core/utilities/info/f;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "u-s-id"

    iget-object v2, p0, Lcom/inmobi/commons/core/utilities/info/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    return-object v0
.end method
