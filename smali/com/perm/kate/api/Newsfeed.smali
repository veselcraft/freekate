.class public Lcom/perm/kate/api/Newsfeed;
.super Ljava/lang/Object;
.source "Newsfeed.java"


# instance fields
.field public groups:Ljava/util/ArrayList;

.field public items:Ljava/util/ArrayList;

.field public new_from:Ljava/lang/String;

.field public profiles:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Newsfeed;
    .locals 11

    const-string v0, "response"

    .line 18
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "items"

    .line 19
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "profiles"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "groups"

    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 22
    new-instance v3, Lcom/perm/kate/api/Newsfeed;

    invoke-direct {v3}, Lcom/perm/kate/api/Newsfeed;-><init>()V

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 24
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "post"

    aput-object v6, v5, v4

    const-string v6, "ads"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    const-string v7, "photo"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "wall_photo"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "photo_tag"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "friend"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "audio"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "video"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "topic"

    aput-object v7, v5, v6

    .line 27
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 33
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "type"

    .line 34
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "friends_recomm"

    .line 39
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v9, "tags_suggestions"

    .line 43
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    const-string v9, "short_video"

    .line 50
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    const-string v9, "liked_by_friends_groups"

    .line 55
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    const-string v9, "market"

    .line 61
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "false"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    .line 69
    :cond_5
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 70
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "unkn news type"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v4}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    goto :goto_1

    .line 76
    :cond_6
    :try_start_0
    invoke-static {v7, p1}, Lcom/perm/kate/api/NewsItem;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/NewsItem;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 79
    iget-object v9, v3, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    .line 81
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v4}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    :cond_7
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    .line 88
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v3, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    .line 89
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v4, p1, :cond_9

    .line 90
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 91
    invoke-static {p1}, Lcom/perm/kate/api/User;->parseFromNews(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object p1

    .line 92
    iget-object v0, v3, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    .line 96
    invoke-static {v2}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v3, Lcom/perm/kate/api/Newsfeed;->groups:Ljava/util/ArrayList;

    :cond_a
    const-string p1, "next_from"

    .line 97
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    return-object v3
.end method

.method public static parseFromSearch(Lorg/json/JSONObject;)Lcom/perm/kate/api/Newsfeed;
    .locals 8

    const-string v0, "response"

    .line 102
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "items"

    .line 103
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "profiles"

    .line 104
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "groups"

    .line 105
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 106
    new-instance v3, Lcom/perm/kate/api/Newsfeed;

    invoke-direct {v3}, Lcom/perm/kate/api/Newsfeed;-><init>()V

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 109
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 110
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 111
    invoke-static {v6}, Lcom/perm/kate/api/NewsItem;->parseFromSearch(Lorg/json/JSONObject;)Lcom/perm/kate/api/NewsItem;

    move-result-object v6

    .line 112
    iget-object v7, v3, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    .line 118
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 119
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 120
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseFromNews(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 121
    iget-object v5, v3, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 125
    invoke-static {v2}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Newsfeed;->groups:Ljava/util/ArrayList;

    :cond_2
    const-string v0, "next_from"

    .line 126
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    return-object v3
.end method
