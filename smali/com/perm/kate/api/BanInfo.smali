.class public Lcom/perm/kate/api/BanInfo;
.super Ljava/lang/Object;
.source "BanInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public admin_id:J

.field public comment:Ljava/lang/String;

.field public comment_visible:I

.field public date:J

.field public end_date:J

.field public reason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/BanInfo;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    const-string v1, "admin_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lcom/perm/kate/api/BanInfo;

    invoke-direct {v0}, Lcom/perm/kate/api/BanInfo;-><init>()V

    .line 22
    .local v0, "info":Lcom/perm/kate/api/BanInfo;
    const-string v1, "admin_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/BanInfo;->admin_id:J

    .line 23
    const-string v1, "date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/BanInfo;->date:J

    .line 24
    const-string v1, "reason"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/BanInfo;->reason:I

    .line 25
    const-string v1, "comment"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    .line 26
    const-string v1, "end_date"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/BanInfo;->end_date:J

    .line 27
    const-string v1, "comment_visible"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/BanInfo;->comment_visible:I

    goto :goto_0
.end method
