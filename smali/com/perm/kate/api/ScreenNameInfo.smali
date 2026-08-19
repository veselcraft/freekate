.class public Lcom/perm/kate/api/ScreenNameInfo;
.super Ljava/lang/Object;
.source "ScreenNameInfo.java"


# instance fields
.field public object_id:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/ScreenNameInfo;
    .locals 3

    .line 11
    new-instance v0, Lcom/perm/kate/api/ScreenNameInfo;

    invoke-direct {v0}, Lcom/perm/kate/api/ScreenNameInfo;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/ScreenNameInfo;->type:Ljava/lang/String;

    const-string v1, "object_id"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/ScreenNameInfo;->object_id:J

    return-object v0
.end method
