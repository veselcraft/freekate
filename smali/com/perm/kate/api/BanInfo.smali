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

.field public comment_visible:Z

.field public end_date:J

.field public reason:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/BanInfo;
    .locals 4

    const-string v0, "admin_id"

    .line 19
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_0
    new-instance v1, Lcom/perm/kate/api/BanInfo;

    invoke-direct {v1}, Lcom/perm/kate/api/BanInfo;-><init>()V

    .line 22
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/BanInfo;->admin_id:J

    const-string v0, "reason"

    .line 24
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/perm/kate/api/BanInfo;->reason:I

    const-string v0, "comment"

    .line 25
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/api/BanInfo;->comment:Ljava/lang/String;

    const-string v0, "end_date"

    .line 26
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/BanInfo;->end_date:J

    const-string v0, "comment_visible"

    .line 27
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v1, Lcom/perm/kate/api/BanInfo;->comment_visible:Z

    return-object v1
.end method
