.class public Lcom/inmobi/rendering/mraid/m;
.super Ljava/lang/Object;
.source "ResizeProperties.java"


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/inmobi/rendering/mraid/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/m;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/inmobi/rendering/mraid/m;->d:I

    .line 21
    iput v0, p0, Lcom/inmobi/rendering/mraid/m;->e:I

    .line 22
    const-string v0, "top-right"

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/m;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/m;->f:Z

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/inmobi/rendering/mraid/m;)Lcom/inmobi/rendering/mraid/m;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/inmobi/rendering/mraid/m;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/m;-><init>()V

    .line 29
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/inmobi/rendering/mraid/m;->b:I

    .line 32
    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/inmobi/rendering/mraid/m;->c:I

    .line 33
    const-string v2, "offsetX"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/inmobi/rendering/mraid/m;->d:I

    .line 34
    const-string v2, "offsetY"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/inmobi/rendering/mraid/m;->e:I

    .line 36
    if-eqz p1, :cond_0

    .line 37
    const-string v2, "customClosePosition"

    iget-object v3, p1, Lcom/inmobi/rendering/mraid/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/inmobi/rendering/mraid/m;->a:Ljava/lang/String;

    .line 38
    const-string v2, "allowOffscreen"

    iget-boolean v3, p1, Lcom/inmobi/rendering/mraid/m;->f:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/inmobi/rendering/mraid/m;->f:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/m;->g:Ljava/lang/String;

    const-string v3, "Invalid resize properties string passed."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    .prologue
    .line 49
    const-string v0, ""

    .line 51
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    const-string v2, "width"

    iget v3, p0, Lcom/inmobi/rendering/mraid/m;->b:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v2, "height"

    iget v3, p0, Lcom/inmobi/rendering/mraid/m;->c:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string v2, "customClosePosition"

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v2, "offsetX"

    iget v3, p0, Lcom/inmobi/rendering/mraid/m;->d:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v2, "offsetY"

    iget v3, p0, Lcom/inmobi/rendering/mraid/m;->e:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string v2, "allowOffscreen"

    iget-boolean v3, p0, Lcom/inmobi/rendering/mraid/m;->f:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/mraid/m;->g:Ljava/lang/String;

    const-string v4, "Invalid resize properties string passed."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
