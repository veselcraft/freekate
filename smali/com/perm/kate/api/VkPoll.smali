.class public Lcom/perm/kate/api/VkPoll;
.super Ljava/lang/Object;
.source "VkPoll.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public anonymous:Z

.field public answer_ids_json:Ljava/lang/String;

.field public answers_json:Ljava/lang/String;

.field public can_edit:Z

.field public can_vote:Z

.field public created:Ljava/lang/Long;

.field public end_date:Ljava/lang/Long;

.field public id:J

.field public is_board:Z

.field public multiple:Z

.field public owner_id:J

.field public question:Ljava/lang/String;

.field public votes:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnswerIds(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 82
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    .line 84
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    .line 85
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 88
    invoke-static {p0}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public static getPollAnswers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 58
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 59
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 62
    new-instance v3, Lcom/perm/kate/api/VkPollAnswer;

    invoke-direct {v3}, Lcom/perm/kate/api/VkPollAnswer;-><init>()V

    const-string v4, "id"

    .line 63
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/VkPollAnswer;->id:J

    const-string v4, "votes"

    .line 64
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/perm/kate/api/VkPollAnswer;->votes:I

    const-string v4, "text"

    .line 65
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/api/VkPollAnswer;->text:Ljava/lang/String;

    const-string v4, "rate"

    .line 66
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v3, Lcom/perm/kate/api/VkPollAnswer;->rate:I

    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    invoke-static {p0}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/VkPoll;
    .locals 3

    .line 28
    new-instance v0, Lcom/perm/kate/api/VkPoll;

    invoke-direct {v0}, Lcom/perm/kate/api/VkPoll;-><init>()V

    const-string v1, "id"

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/VkPoll;->id:J

    const-string v1, "question"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    const-string v1, "owner_id"

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/VkPoll;->owner_id:J

    :cond_0
    const-string v1, "created"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/VkPoll;->created:Ljava/lang/Long;

    :cond_1
    const-string v1, "votes"

    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/VkPoll;->votes:Ljava/lang/Long;

    :cond_2
    const-string v1, "answer_ids"

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/VkPoll;->answer_ids_json:Ljava/lang/String;

    :cond_3
    const-string v1, "answers"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/VkPoll;->answers_json:Ljava/lang/String;

    :cond_4
    const/4 v1, 0x0

    const-string v2, "anonymous"

    .line 41
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/perm/kate/api/VkPoll;->anonymous:Z

    const-string v1, "multiple"

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/perm/kate/api/VkPoll;->multiple:Z

    :cond_5
    const-string v1, "end_date"

    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 46
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/VkPoll;->end_date:Ljava/lang/Long;

    :cond_6
    const-string v1, "can_vote"

    .line 47
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/perm/kate/api/VkPoll;->can_vote:Z

    :cond_7
    const-string v1, "can_edit"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/perm/kate/api/VkPoll;->can_edit:Z

    :cond_8
    return-object v0
.end method
