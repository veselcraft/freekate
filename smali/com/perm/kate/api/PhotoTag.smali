.class public Lcom/perm/kate/api/PhotoTag;
.super Ljava/lang/Object;
.source "PhotoTag.java"


# instance fields
.field public date:J

.field public owner_id:Ljava/lang/Long;

.field public pid:J

.field public placer_id:J

.field public tag_id:J

.field public tagged_name:Ljava/lang/String;

.field public uid:J

.field public viewed:I

.field public x:D

.field public x2:D

.field public y:D

.field public y2:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PhotoTag;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/perm/kate/api/PhotoTag;

    invoke-direct {v0}, Lcom/perm/kate/api/PhotoTag;-><init>()V

    .line 25
    .local v0, "t":Lcom/perm/kate/api/PhotoTag;
    const-string v1, "user_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string v1, "user_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->uid:J

    .line 29
    :goto_0
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->tag_id:J

    .line 30
    const-string v1, "placer_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->placer_id:J

    .line 31
    const-string v1, "tagged_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PhotoTag;->tagged_name:Ljava/lang/String;

    .line 32
    const-string v1, "date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->date:J

    .line 33
    const-string v1, "x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->x:D

    .line 34
    const-string v1, "x2"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->x2:D

    .line 35
    const-string v1, "y"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->y:D

    .line 36
    const-string v1, "y2"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->y2:D

    .line 37
    const-string v1, "viewed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/PhotoTag;->viewed:I

    .line 38
    return-object v0

    .line 28
    :cond_0
    const-string v1, "photo_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/PhotoTag;->uid:J

    goto :goto_0
.end method
