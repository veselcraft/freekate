.class public Lcom/perm/kate/api/Album;
.super Ljava/lang/Object;
.source "Album.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public aid:J

.field public comment_privacy:Lcom/perm/kate/api/Privacy;

.field public description:Ljava/lang/String;

.field public owner_id:J

.field public privacy:Lcom/perm/kate/api/Privacy;

.field public size:J

.field public thumb_src:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Album;
    .locals 3

    .line 21
    new-instance v0, Lcom/perm/kate/api/Album;

    invoke-direct {v0}, Lcom/perm/kate/api/Album;-><init>()V

    const-string v1, "title"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    const-string v1, "id"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Album;->aid:J

    const-string v1, "owner_id"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Album;->owner_id:J

    const-string v1, "description"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    :cond_0
    const-string v1, "privacy_view"

    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Privacy;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Privacy;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    const-string v1, "privacy_comment"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Privacy;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Privacy;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Album;->comment_privacy:Lcom/perm/kate/api/Privacy;

    const-string v1, "size"

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Album;->size:J

    const-string v1, "thumb_src"

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Album;->thumb_src:Ljava/lang/String;

    return-object v0
.end method

.method public static parseFromAttachment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Album;
    .locals 3

    .line 47
    new-instance v0, Lcom/perm/kate/api/Album;

    invoke-direct {v0}, Lcom/perm/kate/api/Album;-><init>()V

    const-string v1, "title"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    const-string v1, "id"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Album;->aid:J

    const-string v1, "owner_id"

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Album;->owner_id:J

    return-object v0
.end method
