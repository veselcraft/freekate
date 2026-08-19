.class public Lcom/perm/kate/api/ChatPreview;
.super Ljava/lang/Object;
.source "ChatPreview.java"


# instance fields
.field public local_id:Ljava/lang/Long;

.field public profiles:Ljava/util/ArrayList;

.field public title:Ljava/lang/String;

.field public users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/ChatPreview;
    .locals 7

    .line 22
    new-instance v0, Lcom/perm/kate/api/ChatPreview;

    invoke-direct {v0}, Lcom/perm/kate/api/ChatPreview;-><init>()V

    const-string v1, "preview"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    .line 25
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/ChatPreview;->title:Ljava/lang/String;

    const-string v2, "local_id"

    .line 28
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/ChatPreview;->local_id:Ljava/lang/Long;

    .line 31
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/perm/kate/api/ChatPreview;->users:Ljava/util/ArrayList;

    const-string v2, "members"

    .line 32
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 33
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 34
    iget-object v4, v0, Lcom/perm/kate/api/ChatPreview;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/api/ChatPreview;->profiles:Ljava/util/ArrayList;

    const-string v1, "profiles"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 52
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 53
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 54
    iget-object v3, v0, Lcom/perm/kate/api/ChatPreview;->profiles:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/api/User;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
