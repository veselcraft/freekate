.class public Lcom/perm/kate/api/MarketItem;
.super Ljava/lang/Object;
.source "MarketItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public can_comment:Z

.field public description:Ljava/lang/String;

.field public id:J

.field public like_count:Ljava/lang/Long;

.field public owner_id:J

.field public photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public price_text:Ljava/lang/String;

.field public thumb_photo:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public user_likes:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketItem;
    .locals 12
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 26
    new-instance v0, Lcom/perm/kate/api/MarketItem;

    invoke-direct {v0}, Lcom/perm/kate/api/MarketItem;-><init>()V

    .line 27
    .local v0, "a":Lcom/perm/kate/api/MarketItem;
    const-string v4, "title"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/MarketItem;->title:Ljava/lang/String;

    .line 28
    const-string v4, "description"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/MarketItem;->description:Ljava/lang/String;

    .line 29
    const-string v4, "thumb_photo"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/MarketItem;->thumb_photo:Ljava/lang/String;

    .line 30
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/perm/kate/api/MarketItem;->id:J

    .line 31
    const-string v4, "owner_id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/perm/kate/api/MarketItem;->owner_id:J

    .line 32
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    .line 33
    const-string v4, "photos"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    const-string v4, "photos"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 35
    .local v3, "photos_json":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 36
    iget-object v4, v0, Lcom/perm/kate/api/MarketItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    .end local v3    # "photos_json":Lorg/json/JSONArray;
    :cond_0
    const-string v4, "likes"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    const-string v4, "likes"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 40
    .local v2, "likes_json":Lorg/json/JSONObject;
    const-string v4, "count"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/MarketItem;->like_count:Ljava/lang/Long;

    .line 41
    const-string v4, "user_likes"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_3

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/MarketItem;->user_likes:Ljava/lang/Boolean;

    .line 43
    .end local v2    # "likes_json":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "price"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 44
    const-string v4, "price"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "text"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/MarketItem;->price_text:Ljava/lang/String;

    .line 45
    :cond_2
    const-string v4, "can_comment"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_4

    :goto_2
    iput-boolean v5, v0, Lcom/perm/kate/api/MarketItem;->can_comment:Z

    .line 46
    return-object v0

    .restart local v2    # "likes_json":Lorg/json/JSONObject;
    :cond_3
    move v4, v6

    .line 41
    goto :goto_1

    .end local v2    # "likes_json":Lorg/json/JSONObject;
    :cond_4
    move v5, v6

    .line 45
    goto :goto_2
.end method

.method public static parseItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/MarketItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/MarketItem;>;"
    if-nez p0, :cond_1

    .line 59
    :cond_0
    return-object v0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 54
    .local v1, "category_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 55
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 56
    .local v4, "o":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/perm/kate/api/MarketItem;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketItem;

    move-result-object v3

    .line 57
    .local v3, "m":Lcom/perm/kate/api/MarketItem;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
