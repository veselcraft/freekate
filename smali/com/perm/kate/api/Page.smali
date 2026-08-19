.class public Lcom/perm/kate/api/Page;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public group_id:J

.field public id:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseFromAttachment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Page;
    .locals 3

    .line 18
    new-instance v0, Lcom/perm/kate/api/Page;

    invoke-direct {v0}, Lcom/perm/kate/api/Page;-><init>()V

    const-string v1, "title"

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    const-string v1, "id"

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Page;->id:J

    const-string v1, "group_id"

    .line 21
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Page;->group_id:J

    return-object v0
.end method
