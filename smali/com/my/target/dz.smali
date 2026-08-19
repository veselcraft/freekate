.class public Lcom/my/target/dz;
.super Ljava/lang/Object;
.source "InstreamAudioAdSectionParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/my/target/da;)V
    .locals 2

    .line 39
    invoke-virtual {p2}, Lcom/my/target/da;->bY()I

    move-result v0

    const-string v1, "connectionTimeout"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/my/target/da;->u(I)V

    .line 40
    invoke-virtual {p2}, Lcom/my/target/da;->bZ()I

    move-result v0

    const-string v1, "maxBannersShow"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 41
    :goto_0
    invoke-virtual {p2, p1}, Lcom/my/target/da;->v(I)V

    return-void
.end method

.method public static cQ()Lcom/my/target/dz;
    .locals 1

    .line 14
    new-instance v0, Lcom/my/target/dz;

    invoke-direct {v0}, Lcom/my/target/dz;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/my/target/cx;)V
    .locals 2

    const-string v0, "settings"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p2}, Lcom/my/target/cx;->bR()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/da;

    .line 28
    invoke-virtual {v0}, Lcom/my/target/da;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    invoke-direct {p0, v1, v0}, Lcom/my/target/dz;->a(Lorg/json/JSONObject;Lcom/my/target/da;)V

    goto :goto_0

    :cond_1
    return-void
.end method
