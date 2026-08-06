.class public Lcom/perm/kate/api/ScreenNameInfo;
.super Ljava/lang/Object;
.source "ScreenNameInfo.java"


# instance fields
.field public object_id:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/ScreenNameInfo;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Lcom/perm/kate/api/ScreenNameInfo;

    invoke-direct {v0}, Lcom/perm/kate/api/ScreenNameInfo;-><init>()V

    .line 12
    .local v0, "s":Lcom/perm/kate/api/ScreenNameInfo;
    if-nez p0, :cond_0

    .line 16
    :goto_0
    return-object v0

    .line 14
    :cond_0
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/ScreenNameInfo;->type:Ljava/lang/String;

    .line 15
    const-string v1, "object_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/ScreenNameInfo;->object_id:J

    goto :goto_0
.end method
