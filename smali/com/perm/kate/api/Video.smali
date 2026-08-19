.class public Lcom/perm/kate/api/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public access_key:Ljava/lang/String;

.field public date:J

.field public description:Ljava/lang/String;

.field public duration:J

.field public external:Ljava/lang/String;

.field public flv_320:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public image_big:Ljava/lang/String;

.field public like_count:Ljava/lang/Integer;

.field public link1:Ljava/lang/String;

.field public live:Ljava/lang/String;

.field public mp4_1080:Ljava/lang/String;

.field public mp4_240:Ljava/lang/String;

.field public mp4_360:Ljava/lang/String;

.field public mp4_480:Ljava/lang/String;

.field public mp4_720:Ljava/lang/String;

.field public owner_id:J

.field public player:Ljava/lang/String;

.field public privacy_comment:Lcom/perm/kate/api/Privacy;

.field public privacy_view:Lcom/perm/kate/api/Privacy;

.field public title:Ljava/lang/String;

.field public user_likes:Ljava/lang/Boolean;

.field public vid:J

.field public views:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoUrl(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "owner_id"    # J
    .param p2, "video_id"    # J

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "res":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "base_url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    return-object v1
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;
    .locals 6
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 39
    new-instance v2, Lcom/perm/kate/api/Video;

    invoke-direct {v2}, Lcom/perm/kate/api/Video;-><init>()V

    .line 40
    .local v2, "v":Lcom/perm/kate/api/Video;
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/perm/kate/api/Video;->vid:J

    .line 41
    const-string v4, "owner_id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/perm/kate/api/Video;->owner_id:J

    .line 42
    const-string v4, "title"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 43
    const-string v4, "duration"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/perm/kate/api/Video;->duration:J

    .line 44
    const-string v4, "description"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    .line 45
    const-string v4, "photo_130"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    .line 46
    const-string v4, "photo_320"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    .line 47
    const-string v4, "date"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/perm/kate/api/Video;->date:J

    .line 48
    const-string v4, "player"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    .line 49
    const-string v4, "views"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    const-string v4, "views"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/perm/kate/api/Video;->views:I

    .line 51
    :cond_0
    const-string v4, "likes"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    const-string v4, "likes"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 53
    .local v1, "jlikes":Lorg/json/JSONObject;
    const-string v4, "count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    .line 54
    const-string v4, "user_likes"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_3

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    .line 57
    .end local v1    # "jlikes":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "files"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    .local v0, "files":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 59
    const-string v3, "external"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->external:Ljava/lang/String;

    .line 60
    const-string v3, "mp4_240"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    .line 61
    const-string v3, "mp4_360"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    .line 62
    const-string v3, "mp4_480"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    .line 63
    const-string v3, "mp4_720"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    .line 64
    const-string v3, "mp4_1080"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    .line 65
    const-string v3, "flv_320"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->flv_320:Ljava/lang/String;

    .line 66
    const-string v3, "live"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->live:Ljava/lang/String;

    .line 69
    :cond_2
    const-string v3, "privacy_view"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Privacy;->parse(Lorg/json/JSONArray;)Lcom/perm/kate/api/Privacy;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->privacy_view:Lcom/perm/kate/api/Privacy;

    .line 70
    const-string v3, "privacy_comment"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Privacy;->parse(Lorg/json/JSONArray;)Lcom/perm/kate/api/Privacy;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Video;->privacy_comment:Lcom/perm/kate/api/Privacy;

    .line 71
    return-object v2

    .line 54
    .end local v0    # "files":Lorg/json/JSONObject;
    .restart local v1    # "jlikes":Lorg/json/JSONObject;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseForAttachments(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/perm/kate/api/Video;

    invoke-direct {v0}, Lcom/perm/kate/api/Video;-><init>()V

    .line 76
    .local v0, "v":Lcom/perm/kate/api/Video;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    .line 77
    const-string v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Video;->owner_id:J

    .line 78
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 79
    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Video;->duration:J

    .line 80
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    .line 81
    const-string v1, "photo_130"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    .line 82
    const-string v1, "photo_320"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    .line 83
    const-string v1, "date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Video;->date:J

    .line 84
    const-string v1, "player"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    .line 85
    const-string v1, "access_key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    .line 86
    return-object v0
.end method


# virtual methods
.method public getVideoUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/perm/kate/api/Video;->owner_id:J

    iget-wide v2, p0, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/api/Video;->getVideoUrl(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
