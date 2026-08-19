.class public Lcom/perm/kate/api/Notifications;
.super Ljava/lang/Object;
.source "Notifications.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field public next_from:Ljava/lang/String;

.field public notifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public profiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Notifications;->profiles:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Notifications;->groups:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Notifications;
    .locals 5

    .line 18
    new-instance v0, Lcom/perm/kate/api/Notifications;

    invoke-direct {v0}, Lcom/perm/kate/api/Notifications;-><init>()V

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "items"

    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "profiles"

    .line 23
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "groups"

    .line 24
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v4, 0x1

    .line 28
    invoke-static {v2, v4}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Notifications;->profiles:Ljava/util/ArrayList;

    :cond_2
    if-eqz v3, :cond_3

    .line 30
    invoke-static {v3}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Notifications;->groups:Ljava/util/ArrayList;

    .line 31
    :cond_3
    invoke-static {v1}, Lcom/perm/kate/api/Notification;->parseNotifications(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    const-string v1, "next_from"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Notifications;->next_from:Ljava/lang/String;

    return-object v0
.end method
