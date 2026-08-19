.class public Lcom/perm/kate/api/ChatMember;
.super Ljava/lang/Object;
.source "ChatMember.java"


# instance fields
.field public group:Lcom/perm/kate/api/Group;

.field public user:Lcom/perm/kate/api/User;


# direct methods
.method public constructor <init>(Lcom/perm/kate/api/Group;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    .line 20
    iput-object p1, p0, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/api/User;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/perm/kate/api/ChatMember;->user:Lcom/perm/kate/api/User;

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/perm/kate/api/ChatMember;->group:Lcom/perm/kate/api/Group;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 13

    const-string v0, "items"

    .line 24
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "profiles"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "groups"

    .line 26
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 27
    invoke-static {v1}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz p0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 30
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 31
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "member_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 32
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "invited_by"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 33
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    const-string v10, "is_admin"

    invoke-virtual {v9, v10, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-wide/16 v10, 0x0

    cmp-long v12, v5, v10

    if-gez v12, :cond_1

    const-wide/16 v10, -0x1

    mul-long v5, v5, v10

    .line 35
    invoke-static {v5, v6, p0}, Lcom/perm/kate/api/ChatMember;->takeGroup(JLjava/util/ArrayList;)Lcom/perm/kate/api/Group;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 37
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    .line 39
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    .line 40
    new-instance v6, Lcom/perm/kate/api/ChatMember;

    invoke-direct {v6, v5}, Lcom/perm/kate/api/ChatMember;-><init>(Lcom/perm/kate/api/Group;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 43
    :cond_1
    invoke-static {v5, v6, v1}, Lcom/perm/kate/api/ChatMember;->takeUser(JLjava/util/ArrayList;)Lcom/perm/kate/api/User;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 45
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/perm/kate/api/User;->invited_by:Ljava/lang/Long;

    .line 47
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/perm/kate/api/User;->is_admin:Ljava/lang/Boolean;

    .line 48
    new-instance v6, Lcom/perm/kate/api/ChatMember;

    invoke-direct {v6, v5}, Lcom/perm/kate/api/ChatMember;-><init>(Lcom/perm/kate/api/User;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method private static takeGroup(JLjava/util/ArrayList;)Lcom/perm/kate/api/Group;
    .locals 4

    const/4 v0, 0x0

    .line 57
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 58
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Group;

    iget-wide v1, v1, Lcom/perm/kate/api/Group;->gid:J

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    .line 59
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/api/Group;

    .line 60
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private static takeUser(JLjava/util/ArrayList;)Lcom/perm/kate/api/User;
    .locals 4

    const/4 v0, 0x0

    .line 68
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 69
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    iget-wide v1, v1, Lcom/perm/kate/api/User;->uid:J

    cmp-long v3, v1, p0

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/api/User;

    .line 71
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
