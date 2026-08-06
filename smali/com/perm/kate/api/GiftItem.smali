.class public Lcom/perm/kate/api/GiftItem;
.super Ljava/lang/Object;
.source "GiftItem.java"


# instance fields
.field public date:J

.field public from_id:Ljava/lang/Long;

.field public gift:Lcom/perm/kate/api/Gift;

.field public id:J

.field public message:Ljava/lang/String;

.field public privacy:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GiftItem;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/perm/kate/api/GiftItem;

    invoke-direct {v0}, Lcom/perm/kate/api/GiftItem;-><init>()V

    .line 19
    .local v0, "g":Lcom/perm/kate/api/GiftItem;
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/GiftItem;->id:J

    .line 20
    const-string v2, "from_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    .line 21
    const-string v2, "date"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/GiftItem;->date:J

    .line 22
    const-string v2, "message"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/GiftItem;->message:Ljava/lang/String;

    .line 23
    const-string v2, "privacy"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/GiftItem;->privacy:Ljava/lang/Integer;

    .line 24
    const-string v2, "gift"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    const-string v2, "gift"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 26
    .local v1, "object":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/Gift;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Gift;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/GiftItem;->gift:Lcom/perm/kate/api/Gift;

    .line 28
    .end local v1    # "object":Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method

.method public static parseGifts(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "jitems"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GiftItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 34
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-nez v4, :cond_0

    .line 33
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 37
    .local v3, "jitem":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/GiftItem;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GiftItem;

    move-result-object v1

    .line 38
    .local v1, "item":Lcom/perm/kate/api/GiftItem;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    .end local v1    # "item":Lcom/perm/kate/api/GiftItem;
    .end local v3    # "jitem":Lorg/json/JSONObject;
    :cond_1
    return-object v2
.end method
