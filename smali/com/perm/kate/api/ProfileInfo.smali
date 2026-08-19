.class public Lcom/perm/kate/api/ProfileInfo;
.super Ljava/lang/Object;
.source "ProfileInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public birthdate:Ljava/lang/String;

.field public birthdate_visibility:I

.field public city:Ljava/lang/Integer;

.field public country:Ljava/lang/Integer;

.field public first_name:Ljava/lang/String;

.field public home_town:Ljava/lang/String;

.field public last_name:Ljava/lang/String;

.field public maiden_name:Ljava/lang/String;

.field public nameRequest:Lcom/perm/kate/api/NameRequest;

.field public relation:Ljava/lang/Integer;

.field public relation_partner_first_name:Ljava/lang/String;

.field public relation_partner_id:Ljava/lang/Long;

.field public relation_partner_last_name:Ljava/lang/String;

.field public sex:Ljava/lang/Integer;

.field public title_city:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->sex:Ljava/lang/Integer;

    .line 22
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->city:Ljava/lang/Integer;

    .line 23
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->country:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->title_city:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->home_town:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/ProfileInfo;
    .locals 6

    .line 31
    new-instance v0, Lcom/perm/kate/api/ProfileInfo;

    invoke-direct {v0}, Lcom/perm/kate/api/ProfileInfo;-><init>()V

    const-string v1, "first_name"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/ProfileInfo;->first_name:Ljava/lang/String;

    :cond_0
    const-string v2, "last_name"

    .line 34
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/ProfileInfo;->last_name:Ljava/lang/String;

    :cond_1
    const-string v3, "maiden_name"

    .line 36
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 37
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/ProfileInfo;->maiden_name:Ljava/lang/String;

    :cond_2
    const-string v3, "sex"

    .line 38
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 39
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/ProfileInfo;->sex:Ljava/lang/Integer;

    :cond_3
    const-string v3, "bdate"

    .line 40
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 41
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/ProfileInfo;->birthdate:Ljava/lang/String;

    :cond_4
    const-string v3, "bdate_visibility"

    .line 42
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/perm/kate/api/ProfileInfo;->birthdate_visibility:I

    const-string v3, "city"

    .line 43
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "id"

    if-eqz v4, :cond_5

    .line 44
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/ProfileInfo;->city:Ljava/lang/Integer;

    .line 45
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/ProfileInfo;->title_city:Ljava/lang/String;

    :cond_5
    const-string v3, "country"

    .line 47
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 48
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/ProfileInfo;->country:Ljava/lang/Integer;

    :cond_6
    const-string v3, "home_town"

    .line 51
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 52
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/ProfileInfo;->home_town:Ljava/lang/String;

    :cond_7
    const-string v3, "relation"

    .line 53
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 54
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/ProfileInfo;->relation:Ljava/lang/Integer;

    :cond_8
    const-string v3, "relation_partner"

    .line 55
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 56
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 58
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/ProfileInfo;->relation_partner_id:Ljava/lang/Long;

    .line 59
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/ProfileInfo;->relation_partner_first_name:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/ProfileInfo;->relation_partner_last_name:Ljava/lang/String;

    :cond_9
    const-string v1, "name_request"

    .line 63
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 65
    invoke-static {p0}, Lcom/perm/kate/api/NameRequest;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/NameRequest;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    :cond_a
    return-object v0
.end method
