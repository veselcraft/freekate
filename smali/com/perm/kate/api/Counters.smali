.class public Lcom/perm/kate/api/Counters;
.super Ljava/lang/Object;
.source "Counters.java"


# instance fields
.field public friends:I

.field public groups:I

.field public messages:I

.field public notifications:I

.field public photos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Counters;
    .locals 2

    .line 15
    new-instance v0, Lcom/perm/kate/api/Counters;

    invoke-direct {v0}, Lcom/perm/kate/api/Counters;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "friends"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Counters;->friends:I

    const-string v1, "messages"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Counters;->messages:I

    const-string v1, "notifications"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Counters;->notifications:I

    const-string v1, "groups"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/Counters;->groups:I

    const-string v1, "photos"

    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/perm/kate/api/Counters;->photos:I

    return-object v0
.end method
