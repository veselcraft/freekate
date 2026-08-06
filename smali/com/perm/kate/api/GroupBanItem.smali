.class public Lcom/perm/kate/api/GroupBanItem;
.super Ljava/lang/Object;
.source "GroupBanItem.java"


# instance fields
.field public banInfo:Lcom/perm/kate/api/BanInfo;

.field public first_name:Ljava/lang/String;

.field public id:J

.field public last_name:Ljava/lang/String;

.field public photo_100:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupBanItem;
    .locals 6
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 18
    new-instance v1, Lcom/perm/kate/api/GroupBanItem;

    invoke-direct {v1}, Lcom/perm/kate/api/GroupBanItem;-><init>()V

    .line 19
    .local v1, "item":Lcom/perm/kate/api/GroupBanItem;
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 40
    .end local v1    # "item":Lcom/perm/kate/api/GroupBanItem;
    :cond_0
    :goto_0
    return-object v1

    .line 21
    .restart local v1    # "item":Lcom/perm/kate/api/GroupBanItem;
    :cond_1
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/perm/kate/api/GroupBanItem;->id:J

    .line 22
    const-string v4, "first_name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 23
    const-string v4, "first_name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/perm/kate/api/GroupBanItem;->first_name:Ljava/lang/String;

    .line 24
    :cond_2
    const-string v4, "last_name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 25
    const-string v4, "last_name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/perm/kate/api/GroupBanItem;->last_name:Ljava/lang/String;

    .line 26
    :cond_3
    const-string v4, "photo_100"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 27
    const-string v4, "photo_100"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/perm/kate/api/GroupBanItem;->photo_100:Ljava/lang/String;

    .line 30
    :cond_4
    const-string v4, "ban_info"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    const-string v4, "ban_info"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 32
    .local v2, "object":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 33
    invoke-static {v2}, Lcom/perm/kate/api/BanInfo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/BanInfo;

    move-result-object v0

    .line 34
    .local v0, "banInfo":Lcom/perm/kate/api/BanInfo;
    if-eqz v0, :cond_5

    .line 35
    iput-object v0, v1, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    goto :goto_0

    :cond_5
    move-object v1, v3

    .line 37
    goto :goto_0
.end method

.method public static parseAll(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GroupBanItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GroupBanItem;>;"
    if-nez p0, :cond_1

    .line 57
    :cond_0
    return-object v3

    .line 47
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 48
    .local v0, "category_count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/json/JSONObject;

    if-nez v5, :cond_3

    .line 48
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 52
    .local v4, "o":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/perm/kate/api/GroupBanItem;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupBanItem;

    move-result-object v2

    .line 53
    .local v2, "item":Lcom/perm/kate/api/GroupBanItem;
    if-eqz v2, :cond_2

    iget-wide v6, v2, Lcom/perm/kate/api/GroupBanItem;->id:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 55
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
