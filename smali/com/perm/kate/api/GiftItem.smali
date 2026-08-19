.class public Lcom/perm/kate/api/GiftItem;
.super Ljava/lang/Object;
.source "GiftItem.java"


# instance fields
.field public date:J

.field public from_id:Ljava/lang/Long;

.field public gift:Lcom/perm/kate/api/Gift;

.field public message:Ljava/lang/String;

.field public privacy:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GiftItem;
    .locals 3

    .line 18
    new-instance v0, Lcom/perm/kate/api/GiftItem;

    invoke-direct {v0}, Lcom/perm/kate/api/GiftItem;-><init>()V

    const-string v1, "from_id"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GiftItem;->from_id:Ljava/lang/Long;

    const-string v1, "date"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GiftItem;->date:J

    const-string v1, "message"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GiftItem;->message:Ljava/lang/String;

    const-string v1, "privacy"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GiftItem;->privacy:Ljava/lang/Integer;

    const-string v1, "gift"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/perm/kate/api/Gift;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Gift;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/GiftItem;->gift:Lcom/perm/kate/api/Gift;

    :cond_0
    return-object v0
.end method

.method public static parseGifts(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 37
    invoke-static {v2}, Lcom/perm/kate/api/GiftItem;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GiftItem;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
