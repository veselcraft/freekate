.class public Lcom/perm/kate/api/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public access_key:Ljava/lang/String;

.field public content_restricted_message:Ljava/lang/String;

.field public date:J

.field public description:Ljava/lang/String;

.field public duration:J

.field public external:Ljava/lang/String;

.field public flv_320:Ljava/lang/String;

.field public hls:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public image_big:Ljava/lang/String;

.field public like_count:Ljava/lang/Integer;

.field public live:Ljava/lang/String;

.field public mp4_1080:Ljava/lang/String;

.field public mp4_240:Ljava/lang/String;

.field public mp4_360:Ljava/lang/String;

.field public mp4_480:Ljava/lang/String;

.field public mp4_720:Ljava/lang/String;

.field public owner_id:J

.field public platform:Ljava/lang/String;

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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoUrl(JJ)Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-static {v1}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;
    .locals 3

    .line 45
    new-instance v0, Lcom/perm/kate/api/Video;

    invoke-direct {v0}, Lcom/perm/kate/api/Video;-><init>()V

    const-string v1, "id"

    .line 46
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Video;->vid:J

    const-string v1, "owner_id"

    .line 47
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Video;->owner_id:J

    const-string v1, "title"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    const-string v1, "duration"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Video;->duration:J

    const-string v1, "description"

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    .line 51
    invoke-static {p0, v0}, Lcom/perm/kate/api/Video;->parseImage(Lorg/json/JSONObject;Lcom/perm/kate/api/Video;)V

    const-string v1, "date"

    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Video;->date:J

    const-string v1, "player"

    .line 53
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    const-string v1, "views"

    .line 54
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Video;->views:I

    :cond_0
    const-string v1, "likes"

    .line 56
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "count"

    .line 58
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    const-string v2, "user_likes"

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    :cond_2
    const-string v1, "files"

    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "external"

    .line 64
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Video;->external:Ljava/lang/String;

    const-string v2, "mp4_240"

    .line 65
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    const-string v2, "mp4_360"

    .line 66
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    const-string v2, "mp4_480"

    .line 67
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    const-string v2, "mp4_720"

    .line 68
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    const-string v2, "mp4_1080"

    .line 69
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    const-string v2, "flv_320"

    .line 70
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Video;->flv_320:Ljava/lang/String;

    const-string v2, "live"

    .line 71
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Video;->live:Ljava/lang/String;

    const-string v2, "hls"

    .line 72
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->hls:Ljava/lang/String;

    :cond_3
    const-string v1, "privacy_view"

    .line 75
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Privacy;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Privacy;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->privacy_view:Lcom/perm/kate/api/Privacy;

    const-string v1, "privacy_comment"

    .line 76
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Privacy;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Privacy;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->privacy_comment:Lcom/perm/kate/api/Privacy;

    const-string v1, "access_key"

    .line 78
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    const-string v1, "platform"

    .line 79
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    const-string v1, "content_restricted_message"

    .line 81
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Video;->content_restricted_message:Ljava/lang/String;

    return-object v0
.end method

.method public static parseForAttachments(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;
    .locals 3

    .line 103
    new-instance v0, Lcom/perm/kate/api/Video;

    invoke-direct {v0}, Lcom/perm/kate/api/Video;-><init>()V

    const-string v1, "id"

    .line 104
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Video;->vid:J

    const-string v1, "owner_id"

    .line 105
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Video;->owner_id:J

    const-string v1, "title"

    .line 106
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    const-string v1, "duration"

    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Video;->duration:J

    const-string v1, "description"

    .line 108
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    .line 109
    invoke-static {p0, v0}, Lcom/perm/kate/api/Video;->parseImage(Lorg/json/JSONObject;Lcom/perm/kate/api/Video;)V

    const-string v1, "date"

    .line 110
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Video;->date:J

    const-string v1, "player"

    .line 111
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    const-string v1, "access_key"

    .line 112
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    const-string v1, "platform"

    .line 113
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    return-object v0
.end method

.method private static parseImage(Lorg/json/JSONObject;Lcom/perm/kate/api/Video;)V
    .locals 4

    const-string v0, "image"

    .line 87
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 90
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "width"

    .line 91
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "url"

    .line 92
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x82

    if-ne v2, v3, :cond_0

    .line 94
    iput-object v1, p1, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    :cond_0
    const/16 v3, 0x140

    if-ne v2, v3, :cond_1

    .line 96
    iput-object v1, p1, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getVideoUrl()Ljava/lang/String;
    .locals 4

    .line 118
    iget-wide v0, p0, Lcom/perm/kate/api/Video;->owner_id:J

    iget-wide v2, p0, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/api/Video;->getVideoUrl(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
