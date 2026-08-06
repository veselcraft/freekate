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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field public notifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public profiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
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
    .param p0, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v1, Lcom/perm/kate/api/Notifications;

    invoke-direct {v1}, Lcom/perm/kate/api/Notifications;-><init>()V

    .line 18
    .local v1, "full_notifications":Lcom/perm/kate/api/Notifications;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    .line 19
    if-nez p0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-object v1

    .line 21
    :cond_1
    const-string v4, "items"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 22
    .local v0, "array":Lorg/json/JSONArray;
    const-string v4, "profiles"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 23
    .local v3, "profiles_array":Lorg/json/JSONArray;
    const-string v4, "groups"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 24
    .local v2, "groups_array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 26
    if-eqz v3, :cond_2

    .line 27
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/perm/kate/api/Notifications;->profiles:Ljava/util/ArrayList;

    .line 28
    :cond_2
    if-eqz v2, :cond_3

    .line 29
    invoke-static {v2}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/perm/kate/api/Notifications;->groups:Ljava/util/ArrayList;

    .line 30
    :cond_3
    invoke-static {v0}, Lcom/perm/kate/api/Notification;->parseNotifications(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    goto :goto_0
.end method
