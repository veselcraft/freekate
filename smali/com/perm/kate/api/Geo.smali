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

.field public place:Lcom/perm/kate/api/Place;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Geo;
    .locals 5
    .param p0, "geo_json"    # Lorg/json/JSONObject;

    .prologue
    .line 14
    new-instance v2, Lcom/perm/kate/api/Geo;

    invoke-direct {v2}, Lcom/perm/kate/api/Geo;-><init>()V

    .line 15
    .local v2, "geo":Lcom/perm/kate/api/Geo;
    const-string v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Geo;->type:Ljava/lang/String;

    .line 16
    const-string v3, "coordinates"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "coordinates":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 18
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "coordinates_array":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 20
    const/4 v3, 0x0

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    .line 21
    const/4 v3, 0x1

    aget-object v3, v1, v3

    iput-object v3, v2, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    .line 24
    .end local v1    # "coordinates_array":[Ljava/lang/String;
    :cond_0
    return-object v2
.end method
