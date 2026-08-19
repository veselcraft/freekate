.class public abstract Lcom/perm/kate/api/AudioMessage;
.super Ljava/lang/Object;
.source "AudioMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static isOggSupported()Z
    .locals 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;
    .locals 3

    .line 19
    new-instance v0, Lcom/perm/kate/api/Audio;

    invoke-direct {v0}, Lcom/perm/kate/api/Audio;-><init>()V

    const-string v1, "id"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    neg-long v1, v1

    iput-wide v1, v0, Lcom/perm/kate/api/Audio;->aid:J

    const-string v1, "owner_id"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    const-string v1, "duration"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Audio;->duration:J

    .line 24
    invoke-static {}, Lcom/perm/kate/api/AudioMessage;->isOggSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "link_ogg"

    goto :goto_0

    :cond_0
    const-string v1, "link_mp3"

    :goto_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    const-string v1, "\u0413\u043e\u043b\u043e\u0441\u043e\u0432\u043e\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u0435"

    .line 26
    iput-object v1, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 27
    iput-object v1, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    const-string v1, "access_key"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Audio;->access_key:Ljava/lang/String;

    const-string v1, "transcript"

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Audio;->transcript:Ljava/lang/String;

    return-object v0
.end method
