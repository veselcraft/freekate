.class public Lcom/perm/kate/api/GroupTopic;
.super Ljava/lang/Object;
.source "GroupTopic.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public comments:I

.field public created:J

.field public created_by:J

.field public gid:J

.field public is_closed:I

.field public is_fixed:I

.field public tid:J

.field public title:Ljava/lang/String;

.field public updated:J

.field public updated_by:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupTopic;
    .locals 3

    .line 21
    new-instance v0, Lcom/perm/kate/api/GroupTopic;

    invoke-direct {v0}, Lcom/perm/kate/api/GroupTopic;-><init>()V

    const-string v1, "id"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->tid:J

    const-string v1, "title"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescapeForTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    const-string v1, "created"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->created:J

    const-string v1, "created_by"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->created_by:J

    const-string v1, "updated"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->updated:J

    const-string v1, "updated_by"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->updated_by:J

    const-string v1, "is_closed"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/GroupTopic;->is_closed:I

    const-string v1, "is_fixed"

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/GroupTopic;->is_fixed:I

    const-string v1, "comments"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/perm/kate/api/GroupTopic;->comments:I

    return-object v0
.end method

.method public static parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupTopic;
    .locals 3

    .line 35
    new-instance v0, Lcom/perm/kate/api/GroupTopic;

    invoke-direct {v0}, Lcom/perm/kate/api/GroupTopic;-><init>()V

    const-string v1, "id"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->tid:J

    const-string v1, "title"

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    const-string v1, "owner_id"

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    neg-long v1, v1

    iput-wide v1, v0, Lcom/perm/kate/api/GroupTopic;->gid:J

    return-object v0
.end method
