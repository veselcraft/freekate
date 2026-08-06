.class public Lcom/perm/kate/api/MarketAlbum;
.super Ljava/lang/Object;
.source "MarketAlbum.java"


# instance fields
.field public id:J

.field public owner_id:J

.field public photo:Lcom/perm/kate/api/Photo;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketAlbum;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/perm/kate/api/MarketAlbum;

    invoke-direct {v0}, Lcom/perm/kate/api/MarketAlbum;-><init>()V

    .line 19
    .local v0, "a":Lcom/perm/kate/api/MarketAlbum;
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/MarketAlbum;->title:Ljava/lang/String;

    .line 20
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/MarketAlbum;->id:J

    .line 21
    const-string v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/MarketAlbum;->owner_id:J

    .line 22
    const-string v1, "photo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const-string v1, "photo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/MarketAlbum;->photo:Lcom/perm/kate/api/Photo;

    .line 24
    :cond_0
    return-object v0
.end method

.method public static parseAlbums(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/MarketAlbum;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/MarketAlbum;>;"
    if-nez p0, :cond_1

    .line 37
    :cond_0
    return-object v0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 32
    .local v1, "category_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 33
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 34
    .local v4, "o":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/perm/kate/api/MarketAlbum;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketAlbum;

    move-result-object v3

    .line 35
    .local v3, "m":Lcom/perm/kate/api/MarketAlbum;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
