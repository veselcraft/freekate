.class public Lcom/perm/kate/api/StatsValue;
.super Ljava/lang/Object;
.source "StatsValue.java"


# instance fields
.field public value:Ljava/lang/String;

.field public visitors:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/StatsValue;
    .locals 2

    .line 14
    new-instance v0, Lcom/perm/kate/api/StatsValue;

    invoke-direct {v0}, Lcom/perm/kate/api/StatsValue;-><init>()V

    const-string v1, "count"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/StatsValue;->visitors:I

    const-string v1, "value"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/StatsValue;->value:Ljava/lang/String;

    return-object v0
.end method
