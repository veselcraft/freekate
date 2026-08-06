.class public Lcom/perm/kate/api/Link;
.super Ljava/lang/Object;
.source "Link.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public description:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image_src:Ljava/lang/String;

.field public photo:Lcom/perm/kate/api/Photo;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;
    .locals 3
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v1, Lcom/perm/kate/api/Link;

    invoke-direct {v1}, Lcom/perm/kate/api/Link;-><init>()V

    .line 19
    .local v1, "link":Lcom/perm/kate/api/Link;
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    .line 20
    const-string v2, "url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 21
    const-string v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    .line 22
    const-string v2, "description"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    .line 24
    const-string v2, "photo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    .local v0, "jsonPhoto":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 26
    invoke-static {v0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    .line 29
    :cond_0
    const-string v2, "photo_100"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Link;->image_src:Ljava/lang/String;

    .line 30
    return-object v1
.end method

.method public static parseFromGroup(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;
    .locals 2
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/perm/kate/api/Link;

    invoke-direct {v0}, Lcom/perm/kate/api/Link;-><init>()V

    .line 35
    .local v0, "link":Lcom/perm/kate/api/Link;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    .line 36
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 37
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    .line 38
    const-string v1, "desc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    .line 39
    const-string v1, "photo_100"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->image_src:Ljava/lang/String;

    .line 40
    return-object v0
.end method
