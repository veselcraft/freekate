.class public abstract Lcom/my/target/core/communication/js/calls/a;
.super Ljava/lang/Object;
.source "AbstractJSCall.java"

# interfaces
.implements Lcom/my/target/core/communication/js/calls/c;


# instance fields
.field protected a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/communication/js/calls/a;->c:Lorg/json/JSONObject;

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/communication/js/calls/a;->a:Lorg/json/JSONObject;

    .line 48
    iput-object p1, p0, Lcom/my/target/core/communication/js/calls/a;->b:Ljava/lang/String;

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/my/target/core/communication/js/calls/a;->c:Lorg/json/JSONObject;

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object v0, p0, Lcom/my/target/core/communication/js/calls/a;->c:Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v2, p0, Lcom/my/target/core/communication/js/calls/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/my/target/core/communication/js/calls/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/my/target/core/communication/js/calls/a;->c:Lorg/json/JSONObject;

    return-object v0
.end method
