.class public Lcom/perm/kate/api/Graffiti;
.super Ljava/lang/Object;
.source "Graffiti.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public id:J

.field public owner_id:J

.field public src:Ljava/lang/String;

.field public src_big:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Graffiti;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/perm/kate/api/Graffiti;

    invoke-direct {v0}, Lcom/perm/kate/api/Graffiti;-><init>()V

    .line 16
    .local v0, "graffiti":Lcom/perm/kate/api/Graffiti;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Graffiti;->id:J

    .line 17
    const-string v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Graffiti;->owner_id:J

    .line 18
    const-string v1, "photo_200"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Graffiti;->src:Ljava/lang/String;

    .line 19
    const-string v1, "photo_586"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Graffiti;->src_big:Ljava/lang/String;

    .line 20
    return-object v0
.end method
