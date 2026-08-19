.class public Lcom/perm/kate/api/NewsList;
.super Ljava/lang/Object;
.source "NewsList.java"


# instance fields
.field public id:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/NewsList;
    .locals 3

    .line 15
    new-instance v0, Lcom/perm/kate/api/NewsList;

    invoke-direct {v0}, Lcom/perm/kate/api/NewsList;-><init>()V

    const-string v1, "id"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/NewsList;->id:J

    const-string v1, "title"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/NewsList;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static parseLists(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 3

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "items"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/NewsList;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/NewsList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
