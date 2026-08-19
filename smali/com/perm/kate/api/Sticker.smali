.class public Lcom/perm/kate/api/Sticker;
.super Ljava/lang/Object;
.source "Sticker.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public animation_url:Ljava/lang/String;

.field public id:J

.field public photo_128:Ljava/lang/String;

.field public photo_256:Ljava/lang/String;

.field public photo_64:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Sticker;
    .locals 6

    .line 18
    new-instance v0, Lcom/perm/kate/api/Sticker;

    invoke-direct {v0}, Lcom/perm/kate/api/Sticker;-><init>()V

    const-string v1, "sticker_id"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Sticker;->id:J

    const-string v1, "images"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 25
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "height"

    .line 26
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    .line 27
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x60

    if-ge v4, v5, :cond_0

    .line 29
    iput-object v3, v0, Lcom/perm/kate/api/Sticker;->photo_64:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/16 v5, 0xc0

    if-ge v4, v5, :cond_1

    .line 31
    iput-object v3, v0, Lcom/perm/kate/api/Sticker;->photo_128:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/16 v5, 0x130

    if-ge v4, v5, :cond_2

    .line 33
    iput-object v3, v0, Lcom/perm/kate/api/Sticker;->photo_256:Ljava/lang/String;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "animation_url"

    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Sticker;->animation_url:Ljava/lang/String;

    return-object v0
.end method
