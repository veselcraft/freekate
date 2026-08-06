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

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Game;
    .locals 6
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/perm/kate/api/Game;

    invoke-direct {v0}, Lcom/perm/kate/api/Game;-><init>()V

    .line 18
    .local v0, "g":Lcom/perm/kate/api/Game;
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Game;->title:Ljava/lang/String;

    .line 19
    const-string v3, "platform_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Game;->platform_id:Ljava/lang/String;

    .line 20
    const-string v3, "icon_200"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Game;->icon_200:Ljava/lang/String;

    .line 21
    const-string v3, "members_count"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Game;->members_count:Ljava/lang/Long;

    .line 22
    const-string v3, "genre"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/Game;->genre:Ljava/lang/String;

    .line 23
    const-string v3, "friends"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 24
    .local v2, "jfs":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 25
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, v0, Lcom/perm/kate/api/Game;->friends:[J

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 27
    iget-object v3, v0, Lcom/perm/kate/api/Game;->friends:[J

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
