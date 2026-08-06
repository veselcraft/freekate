.class public Lcom/perm/kate/api/Newsfeed;
.super Ljava/lang/Object;
.source "Newsfeed.java"


# instance fields
.field public groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/NewsItem;",
            ">;"
        }
    .end annotation
.end field

.field public new_from:Ljava/lang/String;

.field public profiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Newsfeed;
    .locals 11
    .param p0, "root"    # Lorg/json/JSONObject;
    .param p1, "is_comments"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    const-string v10, "response"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 16
    .local v9, "response1":Lorg/json/JSONObject;
    const-string v10, "items"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 17
    .local v3, "jitems":Lorg/json/JSONArray;
    const-string v10, "profiles"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 18
    .local v5, "jprofiles":Lorg/json/JSONArray;
    const-string v10, "groups"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 19
    .local v1, "jgroups":Lorg/json/JSONArray;
    new-instance v7, Lcom/perm/kate/api/Newsfeed;

    invoke-direct {v7}, Lcom/perm/kate/api/Newsfeed;-><init>()V

    .line 20
    .local v7, "newsfeed":Lcom/perm/kate/api/Newsfeed;
    if-eqz v3, :cond_0

    .line 21
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 23
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 24
    .local v2, "jitem":Lorg/json/JSONObject;
    invoke-static {v2, p1}, Lcom/perm/kate/api/NewsItem;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/NewsItem;

    move-result-object v8

    .line 25
    .local v8, "newsitem":Lcom/perm/kate/api/NewsItem;
    iget-object v10, v7, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "i":I
    .end local v2    # "jitem":Lorg/json/JSONObject;
    .end local v8    # "newsitem":Lcom/perm/kate/api/NewsItem;
    :cond_0
    if-eqz v5, :cond_1

    .line 30
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 32
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 33
    .local v4, "jprofile":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/perm/kate/api/User;->parseFromNews(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v6

    .line 34
    .local v6, "m":Lcom/perm/kate/api/User;
    iget-object v10, v7, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    .end local v0    # "i":I
    .end local v4    # "jprofile":Lorg/json/JSONObject;
    .end local v6    # "m":Lcom/perm/kate/api/User;
    :cond_1
    if-eqz v1, :cond_2

    .line 38
    invoke-static {v1}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v7, Lcom/perm/kate/api/Newsfeed;->groups:Ljava/util/ArrayList;

    .line 39
    :cond_2
    const-string v10, "next_from"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    .line 40
    return-object v7
.end method

.method public static parseFromSearch(Lorg/json/JSONObject;)Lcom/perm/kate/api/Newsfeed;
    .locals 11
    .param p0, "root"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    const-string v10, "response"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 45
    .local v9, "response1":Lorg/json/JSONObject;
    const-string v10, "items"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 46
    .local v3, "jitems":Lorg/json/JSONArray;
    const-string v10, "profiles"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 47
    .local v5, "jprofiles":Lorg/json/JSONArray;
    const-string v10, "groups"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 48
    .local v1, "jgroups":Lorg/json/JSONArray;
    new-instance v7, Lcom/perm/kate/api/Newsfeed;

    invoke-direct {v7}, Lcom/perm/kate/api/Newsfeed;-><init>()V

    .line 49
    .local v7, "newsfeed":Lcom/perm/kate/api/Newsfeed;
    if-eqz v3, :cond_0

    .line 50
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 52
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 53
    .local v2, "jitem":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/NewsItem;->parseFromSearch(Lorg/json/JSONObject;)Lcom/perm/kate/api/NewsItem;

    move-result-object v8

    .line 54
    .local v8, "newsitem":Lcom/perm/kate/api/NewsItem;
    iget-object v10, v7, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "i":I
    .end local v2    # "jitem":Lorg/json/JSONObject;
    .end local v8    # "newsitem":Lcom/perm/kate/api/NewsItem;
    :cond_0
    if-eqz v5, :cond_1

    .line 59
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_1

    .line 61
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 62
    .local v4, "jprofile":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/perm/kate/api/User;->parseFromNews(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v6

    .line 63
    .local v6, "m":Lcom/perm/kate/api/User;
    iget-object v10, v7, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "i":I
    .end local v4    # "jprofile":Lorg/json/JSONObject;
    .end local v6    # "m":Lcom/perm/kate/api/User;
    :cond_1
    if-eqz v1, :cond_2

    .line 67
    invoke-static {v1}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v7, Lcom/perm/kate/api/Newsfeed;->groups:Ljava/util/ArrayList;

    .line 68
    :cond_2
    const-string v10, "next_from"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    .line 69
    return-object v7
.end method
