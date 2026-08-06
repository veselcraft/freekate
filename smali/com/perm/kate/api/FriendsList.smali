.class public Lcom/perm/kate/api/FriendsList;
.super Ljava/lang/Object;
.source "FriendsList.java"


# instance fields
.field public lid:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/FriendsList;
    .locals 2
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/perm/kate/api/FriendsList;

    invoke-direct {v0}, Lcom/perm/kate/api/FriendsList;-><init>()V

    .line 13
    .local v0, "fl":Lcom/perm/kate/api/FriendsList;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/FriendsList;->lid:I

    .line 14
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    .line 15
    return-object v0
.end method
