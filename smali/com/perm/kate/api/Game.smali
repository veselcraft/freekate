.class public Lcom/perm/kate/api/Game;
.super Ljava/lang/Object;
.source "Game.java"


# instance fields
.field public friends:[J

.field public genre:Ljava/lang/String;

.field public icon_200:Ljava/lang/String;

.field public members_count:Ljava/lang/Long;

.field public platform_id:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Game;
    .locals 5

    .line 17
    new-instance v0, Lcom/perm/kate/api/Game;

    invoke-direct {v0}, Lcom/perm/kate/api/Game;-><init>()V

    const-string v1, "title"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Game;->title:Ljava/lang/String;

    const-string v1, "platform_id"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Game;->platform_id:Ljava/lang/String;

    const-string v1, "icon_150"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Game;->icon_200:Ljava/lang/String;

    const-string v1, "members_count"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Game;->members_count:Ljava/lang/Long;

    const-string v1, "genre"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Game;->genre:Ljava/lang/String;

    const-string v1, "friends"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, v0, Lcom/perm/kate/api/Game;->friends:[J

    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 27
    iget-object v2, v0, Lcom/perm/kate/api/Game;->friends:[J

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
