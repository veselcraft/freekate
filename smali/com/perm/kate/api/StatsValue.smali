.class public Lcom/perm/kate/api/StatsValue;
.super Ljava/lang/Object;
.source "StatsValue.java"


# instance fields
.field public code:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field public visitors:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/StatsValue;
    .locals 2
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lcom/perm/kate/api/StatsValue;

    invoke-direct {v0}, Lcom/perm/kate/api/StatsValue;-><init>()V

    .line 15
    .local v0, "v":Lcom/perm/kate/api/StatsValue;
    const-string v1, "visitors"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    .line 16
    const-string v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/StatsValue;->value:Ljava/lang/String;

    .line 17
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/StatsValue;->code:Ljava/lang/String;

    .line 18
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/StatsValue;->name:Ljava/lang/String;

    .line 19
    return-object v0
.end method
