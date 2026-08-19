.class public abstract Lcom/my/target/c;
.super Ljava/lang/Object;
.source "AdResponseParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 2

    .line 83
    sget-boolean v0, Lcom/my/target/ah;->enabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sdk_debug_mode"

    .line 85
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 88
    sput-boolean p1, Lcom/my/target/ah;->enabled:Z

    :cond_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "version"

    .line 97
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    const-string v1, "."

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xa

    .line 105
    :try_start_1
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method static isVast(Ljava/lang/String;)Z
    .locals 1

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "<VAST"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<?xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/my/target/bz;Lcom/my/target/cv;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cv;
.end method

.method protected a(Ljava/lang/String;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 0

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    const-string p2, ""

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Converting to JSON..."

    .line 50
    invoke-static {p2}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 53
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p2}, Lcom/my/target/c;->a(Lorg/json/JSONObject;)V

    const-string p1, "done"

    .line 55
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p2}, Lcom/my/target/c;->b(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    const-string p1, "invalid json version"

    .line 62
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string p1, "parsing ad response: empty data"

    .line 76
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :catch_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
