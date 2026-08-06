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

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupTopic;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcom/perm/kate/api/GroupTopic;

    invoke-direct {v0}, Lcom/perm/kate/api/GroupTopic;-><init>()V

    .line 22
    .local v0, "topic":Lcom/perm/kate/api/GroupTopic;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/GroupTopic;->tid:J

    .line 23
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescapeForTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    .line 24
    const-string v1, "created"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/GroupTopic;->created:J

    .line 25
    const-string v1, "created_by"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/GroupTopic;->created_by:J

    .line 26
    const-string v1, "updated"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/GroupTopic;->updated:J

    .line 27
    const-string v1, "updated_by"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/GroupTopic;->updated_by:J

    .line 28
    const-string v1, "is_closed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/GroupTopic;->is_closed:I

    .line 29
    const-string v1, "is_fixed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/GroupTopic;->is_fixed:I

    .line 30
    const-string v1, "comments"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/GroupTopic;->comments:I

    .line 31
    return-object v0
.end method

.method public static parseForNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupTopic;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/perm/kate/api/GroupTopic;

    invoke-direct {v0}, Lcom/perm/kate/api/GroupTopic;-><init>()V

    .line 36
    .local v0, "topic":Lcom/perm/kate/api/GroupTopic;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/GroupTopic;->tid:J

    .line 37
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/GroupTopic;->title:Ljava/lang/String;

    .line 38
    const-string v1, "owner_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    neg-long v2, v2

    iput-wide v2, v0, Lcom/perm/kate/api/GroupTopic;->gid:J

    .line 46
    return-object v0
.end method
