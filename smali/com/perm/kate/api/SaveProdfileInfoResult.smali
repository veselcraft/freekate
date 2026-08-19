.class public Lcom/perm/kate/api/SaveProdfileInfoResult;
.super Ljava/lang/Object;
.source "SaveProdfileInfoResult.java"


# instance fields
.field public changed:I

.field public nameRequest:Lcom/perm/kate/api/NameRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/SaveProdfileInfoResult;
    .locals 3

    .line 12
    new-instance v0, Lcom/perm/kate/api/SaveProdfileInfoResult;

    invoke-direct {v0}, Lcom/perm/kate/api/SaveProdfileInfoResult;-><init>()V

    const-string v1, "changed"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/SaveProdfileInfoResult;->changed:I

    const-string v1, "name_request"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lcom/perm/kate/api/NameRequest;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/NameRequest;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/SaveProdfileInfoResult;->nameRequest:Lcom/perm/kate/api/NameRequest;

    :cond_0
    return-object v0
.end method
