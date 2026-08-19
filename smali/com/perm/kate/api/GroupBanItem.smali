.class public Lcom/perm/kate/api/GroupBanItem;
.super Ljava/lang/Object;
.source "GroupBanItem.java"


# instance fields
.field public banInfo:Lcom/perm/kate/api/BanInfo;

.field public group:Lcom/perm/kate/api/Group;

.field public user:Lcom/perm/kate/api/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupBanItem;
    .locals 4

    .line 16
    new-instance v0, Lcom/perm/kate/api/GroupBanItem;

    invoke-direct {v0}, Lcom/perm/kate/api/GroupBanItem;-><init>()V

    const-string v1, "type"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile"

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/User;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/GroupBanItem;->user:Lcom/perm/kate/api/User;

    :cond_0
    const-string v2, "group"

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Group;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Group;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupBanItem;->group:Lcom/perm/kate/api/Group;

    :cond_1
    const-string v1, "ban_info"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 27
    invoke-static {p0}, Lcom/perm/kate/api/BanInfo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/BanInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 29
    iput-object p0, v0, Lcom/perm/kate/api/GroupBanItem;->banInfo:Lcom/perm/kate/api/BanInfo;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static parseAll(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 43
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/json/JSONObject;

    if-nez v3, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 46
    invoke-static {v3}, Lcom/perm/kate/api/GroupBanItem;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupBanItem;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/perm/kate/api/GroupBanItem;->user:Lcom/perm/kate/api/User;

    if-eqz v0, :cond_0

    .line 57
    iget-wide v0, v0, Lcom/perm/kate/api/User;->uid:J

    return-wide v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/api/GroupBanItem;->group:Lcom/perm/kate/api/Group;

    iget-wide v0, v0, Lcom/perm/kate/api/Group;->gid:J

    neg-long v0, v0

    return-wide v0
.end method
