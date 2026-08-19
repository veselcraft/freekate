.class public Lcom/perm/kate/api/NameRequest;
.super Ljava/lang/Object;
.source "NameRequest.java"


# instance fields
.field public first_name:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public last_name:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/perm/kate/api/NameRequest;->id:Ljava/lang/Long;

    .line 9
    iput-object v0, p0, Lcom/perm/kate/api/NameRequest;->status:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/perm/kate/api/NameRequest;->first_name:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/perm/kate/api/NameRequest;->last_name:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/NameRequest;
    .locals 3

    .line 14
    new-instance v0, Lcom/perm/kate/api/NameRequest;

    invoke-direct {v0}, Lcom/perm/kate/api/NameRequest;-><init>()V

    const-string v1, "id"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NameRequest;->id:Ljava/lang/Long;

    :cond_0
    const-string v1, "status"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NameRequest;->status:Ljava/lang/String;

    :cond_1
    const-string v1, "first_name"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NameRequest;->first_name:Ljava/lang/String;

    :cond_2
    const-string v1, "last_name"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/NameRequest;->last_name:Ljava/lang/String;

    :cond_3
    return-object v0
.end method
