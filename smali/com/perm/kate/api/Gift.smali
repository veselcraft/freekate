.class public Lcom/perm/kate/api/Gift;
.super Ljava/lang/Object;
.source "Gift.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public id:J

.field public thumb_256:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Gift;
    .locals 3

    .line 15
    new-instance v0, Lcom/perm/kate/api/Gift;

    invoke-direct {v0}, Lcom/perm/kate/api/Gift;-><init>()V

    const-string v1, "id"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Gift;->id:J

    const-string v1, "thumb_256"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    return-object v0
.end method
