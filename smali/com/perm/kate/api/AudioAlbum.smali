.class public Lcom/perm/kate/api/AudioAlbum;
.super Ljava/lang/Object;
.source "AudioAlbum.java"


# instance fields
.field public access_key:Ljava/lang/String;

.field public album_id:J

.field public original_access_key:Ljava/lang/String;

.field public original_album_id:J

.field public original_owner_id:J

.field public owner_id:J

.field public photo:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttachmentString(JJLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_playlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 69
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getLink(JJLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio?z=audio_playlist"

    invoke-static {v1}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 62
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/AudioAlbum;
    .locals 6

    .line 21
    new-instance v0, Lcom/perm/kate/api/AudioAlbum;

    invoke-direct {v0}, Lcom/perm/kate/api/AudioAlbum;-><init>()V

    const-string v1, "title"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    const-string v1, "id"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    const-string v1, "owner_id"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/AudioAlbum;->owner_id:J

    const-string v2, "access_key"

    .line 25
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/AudioAlbum;->access_key:Ljava/lang/String;

    const-string v3, "original"

    .line 26
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "playlist_id"

    .line 28
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/AudioAlbum;->original_album_id:J

    .line 29
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/AudioAlbum;->original_owner_id:J

    .line 30
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/AudioAlbum;->original_access_key:Ljava/lang/String;

    :cond_0
    const-string v1, "photo"

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "photo_135"

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/AudioAlbum;->photo:Ljava/lang/String;

    .line 39
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/api/AudioAlbum;->photo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "thumbs"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 41
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/AudioAlbum;->photo:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public static parseAlbums(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 53
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 54
    invoke-static {v3}, Lcom/perm/kate/api/AudioAlbum;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/AudioAlbum;

    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAttachmentString()Ljava/lang/String;
    .locals 7

    .line 82
    iget-wide v0, p0, Lcom/perm/kate/api/AudioAlbum;->original_album_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/perm/kate/api/AudioAlbum;->original_owner_id:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    .line 83
    iget-object v2, p0, Lcom/perm/kate/api/AudioAlbum;->original_access_key:Ljava/lang/String;

    invoke-static {v0, v1, v4, v5, v2}, Lcom/perm/kate/api/AudioAlbum;->getAttachmentString(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    iget-wide v2, p0, Lcom/perm/kate/api/AudioAlbum;->owner_id:J

    iget-object v4, p0, Lcom/perm/kate/api/AudioAlbum;->access_key:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/AudioAlbum;->getAttachmentString(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 7

    .line 75
    iget-wide v0, p0, Lcom/perm/kate/api/AudioAlbum;->original_album_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/perm/kate/api/AudioAlbum;->original_owner_id:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    .line 76
    iget-object v2, p0, Lcom/perm/kate/api/AudioAlbum;->original_access_key:Ljava/lang/String;

    invoke-static {v0, v1, v4, v5, v2}, Lcom/perm/kate/api/AudioAlbum;->getLink(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    iget-wide v2, p0, Lcom/perm/kate/api/AudioAlbum;->owner_id:J

    iget-object v4, p0, Lcom/perm/kate/api/AudioAlbum;->access_key:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/AudioAlbum;->getLink(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
