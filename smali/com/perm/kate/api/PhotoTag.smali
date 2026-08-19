.class public Lcom/perm/kate/api/PhotoTag;
.super Ljava/lang/Object;
.source "PhotoTag.java"


# instance fields
.field public owner_id:Ljava/lang/Long;

.field public pid:J

.field public placer_id:J

.field public tag_id:J

.field public tagged_name:Ljava/lang/String;

.field public uid:J

.field public x:D

.field public x2:D

.field public y:D

.field public y2:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PhotoTag;
    .locals 4

    .line 23
    new-instance v0, Lcom/perm/kate/api/PhotoTag;

    invoke-direct {v0}, Lcom/perm/kate/api/PhotoTag;-><init>()V

    const-string v1, "user_id"

    const-wide/16 v2, 0x0

    .line 25
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/PhotoTag;->uid:J

    const-string v1, "id"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/PhotoTag;->tag_id:J

    const-string v1, "placer_id"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/PhotoTag;->placer_id:J

    const-string v1, "tagged_name"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PhotoTag;->tagged_name:Ljava/lang/String;

    const-string v1, "x"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/PhotoTag;->x:D

    const-string v1, "x2"

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/PhotoTag;->x2:D

    const-string v1, "y"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/PhotoTag;->y:D

    const-string v1, "y2"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/PhotoTag;->y2:D

    return-object v0
.end method
