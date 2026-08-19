.class public Lcom/perm/kate/api/MarketAlbum;
.super Ljava/lang/Object;
.source "MarketAlbum.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public id:J

.field public owner_id:J

.field public photo:Lcom/perm/kate/api/Photo;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketAlbum;
    .locals 3

    .line 22
    new-instance v0, Lcom/perm/kate/api/MarketAlbum;

    invoke-direct {v0}, Lcom/perm/kate/api/MarketAlbum;-><init>()V

    const-string v1, "title"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/MarketAlbum;->title:Ljava/lang/String;

    const-string v1, "id"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/MarketAlbum;->id:J

    const-string v1, "owner_id"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/MarketAlbum;->owner_id:J

    const-string v1, "photo"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/MarketAlbum;->photo:Lcom/perm/kate/api/Photo;

    :cond_0
    return-object v0
.end method

.method public static parseAlbums(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 38
    invoke-static {v3}, Lcom/perm/kate/api/MarketAlbum;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketAlbum;

    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
