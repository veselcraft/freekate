.class Lcom/inmobi/ads/s$a;
.super Ljava/lang/Thread;
.source "NativeStrandAdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/inmobi/ads/s;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/inmobi/ads/s$a;->a:Lcom/inmobi/ads/s;

    .line 207
    iput-object p2, p0, Lcom/inmobi/ads/s$a;->b:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 213
    :try_start_0
    new-instance v0, Lcom/inmobi/ads/x;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/inmobi/ads/s$a;->a:Lcom/inmobi/ads/s;

    invoke-virtual {v2}, Lcom/inmobi/ads/s;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/inmobi/ads/x;-><init>(Lorg/json/JSONObject;)V

    .line 214
    invoke-virtual {v0}, Lcom/inmobi/ads/x;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 216
    const-string v2, "type"

    iget-object v3, p0, Lcom/inmobi/ads/s$a;->a:Lcom/inmobi/ads/s;

    invoke-virtual {v3}, Lcom/inmobi/ads/s;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v2

    const-string v3, "ads"

    const-string v4, "AdLoadSuccessful"

    invoke-virtual {v2, v3, v4, v1}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    new-instance v1, Lcom/inmobi/ads/q;

    iget-object v2, p0, Lcom/inmobi/ads/s$a;->a:Lcom/inmobi/ads/s;

    invoke-static {v2}, Lcom/inmobi/ads/s;->b(Lcom/inmobi/ads/s;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/s$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/inmobi/ads/q;-><init>(Landroid/content/Context;Lcom/inmobi/ads/x;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/inmobi/ads/s$a;->a:Lcom/inmobi/ads/s;

    invoke-static {v0, v1}, Lcom/inmobi/ads/s;->b(Lcom/inmobi/ads/s;Lcom/inmobi/ads/q;)V

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/s$a;->a:Lcom/inmobi/ads/s;

    const-string v1, "DataModelValidationFailed"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/s;->c(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/inmobi/ads/s$a;->a:Lcom/inmobi/ads/s;

    invoke-static {v0}, Lcom/inmobi/ads/s;->c(Lcom/inmobi/ads/s;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/s;->A()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to parse Native strand data model"

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    iget-object v0, p0, Lcom/inmobi/ads/s$a;->a:Lcom/inmobi/ads/s;

    const-string v1, "InternalError"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/s;->c(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/inmobi/ads/s$a;->a:Lcom/inmobi/ads/s;

    invoke-static {v0}, Lcom/inmobi/ads/s;->c(Lcom/inmobi/ads/s;)V

    goto :goto_0
.end method
