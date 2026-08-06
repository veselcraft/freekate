.class public Lcom/perm/kate/api/SaveProdfileInfoResult;
.super Ljava/lang/Object;
.source "SaveProdfileInfoResult.java"


# instance fields
.field public changed:I

.field public nameRequest:Lcom/perm/kate/api/NameRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/SaveProdfileInfoResult;
    .locals 3
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v1, Lcom/perm/kate/api/SaveProdfileInfoResult;

    invoke-direct {v1}, Lcom/perm/kate/api/SaveProdfileInfoResult;-><init>()V

    .line 13
    .local v1, "r":Lcom/perm/kate/api/SaveProdfileInfoResult;
    const-string v2, "changed"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/perm/kate/api/SaveProdfileInfoResult;->changed:I

    .line 14
    const-string v2, "name_request"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    const-string v2, "name_request"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 16
    .local v0, "jname_request":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/perm/kate/api/NameRequest;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/NameRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    .line 18
    .end local v0    # "jname_request":Lorg/json/JSONObject;
    :cond_0
    return-object v1
.end method
