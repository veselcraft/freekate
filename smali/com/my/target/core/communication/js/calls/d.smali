.class public final Lcom/my/target/core/communication/js/calls/d;
.super Lcom/my/target/core/communication/js/calls/a;
.source "JSInitCall.java"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "init"

    invoke-direct {p0, v0}, Lcom/my/target/core/communication/js/calls/a;-><init>(Ljava/lang/String;)V

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/communication/js/calls/d;->a:Lorg/json/JSONObject;

    const-string v1, "bannersJSON"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-object v0, p0, Lcom/my/target/core/communication/js/calls/d;->a:Lorg/json/JSONObject;

    const-string v1, "version"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
