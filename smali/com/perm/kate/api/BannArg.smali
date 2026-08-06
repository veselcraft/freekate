.class public Lcom/perm/kate/api/BannArg;
.super Ljava/lang/Object;
.source "BannArg.java"


# instance fields
.field public full_groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field public groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public is_extended:Z

.field public members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "extended"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/perm/kate/api/BannArg;->is_extended:Z

    .line 18
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/BannArg;
    .locals 14
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "is_extended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, -0x1

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "arg":Lcom/perm/kate/api/BannArg;
    const-string v9, "members"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 23
    .local v5, "jmembers":Lorg/json/JSONArray;
    const-string v9, "groups"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 24
    .local v4, "jgroups":Lorg/json/JSONArray;
    const-string v9, "profiles"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 25
    .local v7, "jprofiles":Lorg/json/JSONArray;
    if-eqz p1, :cond_1

    .line 26
    new-instance v0, Lcom/perm/kate/api/BannArg;

    .end local v0    # "arg":Lcom/perm/kate/api/BannArg;
    const/4 v9, 0x1

    invoke-direct {v0, v9}, Lcom/perm/kate/api/BannArg;-><init>(Z)V

    .line 27
    .restart local v0    # "arg":Lcom/perm/kate/api/BannArg;
    if-eqz v4, :cond_0

    .line 28
    invoke-static {v4}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v0, Lcom/perm/kate/api/BannArg;->full_groups:Ljava/util/ArrayList;

    .line 29
    :cond_0
    if-eqz v7, :cond_5

    .line 30
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/perm/kate/api/BannArg;->profiles:Ljava/util/ArrayList;

    .line 31
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 32
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 33
    .local v6, "jprofile":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/perm/kate/api/User;->parseFromNews(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v8

    .line 34
    .local v8, "m":Lcom/perm/kate/api/User;
    iget-object v9, v0, Lcom/perm/kate/api/BannArg;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v2    # "i":I
    .end local v6    # "jprofile":Lorg/json/JSONObject;
    .end local v8    # "m":Lcom/perm/kate/api/User;
    :cond_1
    new-instance v0, Lcom/perm/kate/api/BannArg;

    .end local v0    # "arg":Lcom/perm/kate/api/BannArg;
    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lcom/perm/kate/api/BannArg;-><init>(Z)V

    .line 39
    .restart local v0    # "arg":Lcom/perm/kate/api/BannArg;
    if-eqz v4, :cond_3

    .line 40
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/perm/kate/api/BannArg;->groups:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 42
    .local v1, "category_count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 43
    invoke-virtual {v4, v2, v12, v13}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 44
    .local v3, "id":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v9, v10, v12

    if-eqz v9, :cond_2

    .line 45
    iget-object v9, v0, Lcom/perm/kate/api/BannArg;->groups:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    .end local v1    # "category_count":I
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/Long;
    :cond_3
    if-eqz v5, :cond_5

    .line 49
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Lcom/perm/kate/api/BannArg;->members:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 51
    .restart local v1    # "category_count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 52
    invoke-virtual {v5, v2, v12, v13}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 53
    .restart local v3    # "id":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v9, v10, v12

    if-eqz v9, :cond_4

    .line 54
    iget-object v9, v0, Lcom/perm/kate/api/BannArg;->members:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 58
    .end local v1    # "category_count":I
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/Long;
    :cond_5
    return-object v0
.end method
