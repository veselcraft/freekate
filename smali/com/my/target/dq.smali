.class public Lcom/my/target/dq;
.super Ljava/lang/Object;
.source "LogMessage.java"


# static fields
.field private static en:Ljava/lang/String; = "https://ad.mail.ru/sdk/log/"

.field public static eo:Z = true


# instance fields
.field private cj:Ljava/lang/String;

.field private ep:Ljava/lang/String;

.field private eq:Ljava/lang/String;

.field private er:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private slotId:I

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/my/target/dq;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/my/target/dq;->type:Ljava/lang/String;

    return-void
.end method

.method public static P(Ljava/lang/String;)Lcom/my/target/dq;
    .locals 2

    .line 34
    new-instance v0, Lcom/my/target/dq;

    const-string v1, "error"

    invoke-direct {v0, p0, v1}, Lcom/my/target/dq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic cM()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/my/target/dq;->en:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Q(Ljava/lang/String;)Lcom/my/target/dq;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/my/target/dq;->ep:Ljava/lang/String;

    return-object p0
.end method

.method public R(Ljava/lang/String;)Lcom/my/target/dq;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/my/target/dq;->eq:Ljava/lang/String;

    return-object p0
.end method

.method public S(Ljava/lang/String;)Lcom/my/target/dq;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/my/target/dq;->cj:Ljava/lang/String;

    return-object p0
.end method

.method cL()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sdk"

    const-string v2, "myTarget"

    .line 105
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkver"

    const-string v2, "5.6.0"

    .line 106
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    const-string v2, "Android"

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "osver"

    .line 108
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 109
    iget-object v2, p0, Lcom/my/target/dq;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 110
    iget-object v2, p0, Lcom/my/target/dq;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v1, p0, Lcom/my/target/dq;->ep:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "message"

    .line 113
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    :cond_0
    iget v1, p0, Lcom/my/target/dq;->slotId:I

    if-lez v1, :cond_1

    const-string v2, "slot"

    .line 117
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/my/target/dq;->eq:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "url"

    .line 121
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/my/target/dq;->cj:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "bannerId"

    .line 125
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/my/target/dq;->er:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "data"

    .line 129
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Landroid/content/Context;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/my/target/dq$1;

    invoke-direct {v0, p0, p1}, Lcom/my/target/dq$1;-><init>(Lcom/my/target/dq;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/my/target/ai;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public x(I)Lcom/my/target/dq;
    .locals 0

    .line 59
    iput p1, p0, Lcom/my/target/dq;->slotId:I

    return-object p0
.end method
