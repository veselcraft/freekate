.class public Lcom/perm/kate/api/Geo;
.super Ljava/lang/Object;
.source "Geo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public lat:Ljava/lang/String;

.field public lon:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Geo;
    .locals 3

    .line 14
    new-instance v0, Lcom/perm/kate/api/Geo;

    invoke-direct {v0}, Lcom/perm/kate/api/Geo;-><init>()V

    const-string v1, "type"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Geo;->type:Ljava/lang/String;

    const-string v1, "coordinates"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string p0, "latitude"

    .line 19
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    const-string p0, "longitude"

    .line 20
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, " "

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 25
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 26
    aget-object v1, p0, v1

    iput-object v1, v0, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    const/4 v1, 0x1

    .line 27
    aget-object p0, p0, v1

    iput-object p0, v0, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method
