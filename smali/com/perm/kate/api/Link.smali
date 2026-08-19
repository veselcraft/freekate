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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;
    .locals 2

    .line 18
    new-instance v0, Lcom/perm/kate/api/Link;

    invoke-direct {v0}, Lcom/perm/kate/api/Link;-><init>()V

    const-string v1, "id"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    const-string v1, "url"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    const-string v1, "title"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    const-string v1, "description"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    const-string v1, "photo"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 25
    invoke-static {p0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    .line 26
    iget-object v1, p0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/perm/kate/api/Link;->image_src:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static parseFromGroup(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;
    .locals 2

    .line 32
    new-instance v0, Lcom/perm/kate/api/Link;

    invoke-direct {v0}, Lcom/perm/kate/api/Link;-><init>()V

    const-string v1, "id"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->id:Ljava/lang/String;

    const-string v1, "url"

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    const-string v1, "name"

    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    const-string v1, "desc"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    const-string v1, "photo_100"

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Link;->image_src:Ljava/lang/String;

    return-object v0
.end method
