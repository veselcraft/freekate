.class public Lcom/perm/kate/api/City;
.super Ljava/lang/Object;
.source "City.java"


# instance fields
.field public area:Ljava/lang/String;

.field public cid:J

.field public name:Ljava/lang/String;

.field public region:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/City;
    .locals 3

    .line 14
    new-instance v0, Lcom/perm/kate/api/City;

    invoke-direct {v0}, Lcom/perm/kate/api/City;-><init>()V

    const-string v1, "id"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/City;->cid:J

    const-string v1, "title"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    const-string v1, "area"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/City;->area:Ljava/lang/String;

    const-string v1, "region"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/City;->region:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
