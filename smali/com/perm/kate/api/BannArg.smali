.class public Lcom/perm/kate/api/BannArg;
.super Ljava/lang/Object;
.source "BannArg.java"


# instance fields
.field public groups:Ljava/util/ArrayList;

.field public members:Ljava/util/ArrayList;

.field public profiles:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/BannArg;
    .locals 10

    const-string v0, "members"

    .line 22
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "groups"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "profiles"

    .line 24
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 26
    new-instance p1, Lcom/perm/kate/api/BannArg;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/perm/kate/api/BannArg;-><init>(Z)V

    if-eqz p0, :cond_4

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/api/BannArg;->profiles:Ljava/util/ArrayList;

    .line 31
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 32
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 33
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseFromNews(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 34
    iget-object v1, p1, Lcom/perm/kate/api/BannArg;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Lcom/perm/kate/api/BannArg;

    invoke-direct {p1, v2}, Lcom/perm/kate/api/BannArg;-><init>(Z)V

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_2

    .line 40
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p1, Lcom/perm/kate/api/BannArg;->groups:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p0, :cond_2

    .line 43
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-eqz v9, :cond_1

    .line 45
    iget-object v7, p1, Lcom/perm/kate/api/BannArg;->groups:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    .line 49
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p1, Lcom/perm/kate/api/BannArg;->members:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_4

    .line 52
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_3

    .line 54
    iget-object v5, p1, Lcom/perm/kate/api/BannArg;->members:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method
