.class public Lcom/perm/kate/api/FriendsList;
.super Ljava/lang/Object;
.source "FriendsList.java"


# instance fields
.field public lid:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/FriendsList;
    .locals 2

    .line 12
    new-instance v0, Lcom/perm/kate/api/FriendsList;

    invoke-direct {v0}, Lcom/perm/kate/api/FriendsList;-><init>()V

    const-string v1, "id"

    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/FriendsList;->lid:I

    const-string v1, "name"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    return-object v0
.end method
