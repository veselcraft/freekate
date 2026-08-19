.class public Lcom/perm/kate/api/Country;
.super Ljava/lang/Object;
.source "Country.java"


# instance fields
.field public cid:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Country;
    .locals 3

    .line 11
    new-instance v0, Lcom/perm/kate/api/Country;

    invoke-direct {v0}, Lcom/perm/kate/api/Country;-><init>()V

    const-string v1, "id"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Country;->cid:J

    const-string v1, "title"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Country;->name:Ljava/lang/String;

    return-object v0
.end method
