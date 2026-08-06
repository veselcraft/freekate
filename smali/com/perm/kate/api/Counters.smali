.class public Lcom/perm/kate/api/Counters;
.super Ljava/lang/Object;
.source "Counters.java"


# instance fields
.field public events:I

.field public friends:I

.field public groups:I

.field public messages:I

.field public notifications:I

.field public photos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Counters;
    .locals 2
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/perm/kate/api/Counters;

    invoke-direct {v0}, Lcom/perm/kate/api/Counters;-><init>()V

    .line 16
    .local v0, "a":Lcom/perm/kate/api/Counters;
    if-nez p0, :cond_0

    .line 24
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const-string v1, "friends"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Counters;->friends:I

    .line 19
    const-string v1, "messages"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Counters;->messages:I

    .line 20
    const-string v1, "notifications"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Counters;->notifications:I

    .line 21
    const-string v1, "events"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Counters;->events:I

    .line 22
    const-string v1, "groups"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Counters;->groups:I

    .line 23
    const-string v1, "photos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Counters;->photos:I

    goto :goto_0
.end method
