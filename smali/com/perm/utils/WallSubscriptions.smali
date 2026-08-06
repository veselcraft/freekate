.class public Lcom/perm/utils/WallSubscriptions;
.super Ljava/lang/Object;
.source "WallSubscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/WallSubscriptions$WallSubscription;
    }
.end annotation


# static fields
.field private static instance:Lcom/perm/utils/WallSubscriptions;


# instance fields
.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/utils/WallSubscriptions$WallSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public static disableRegularRefreshIfRequired()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 129
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 131
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/utils/WallSubscriptions;->getList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 133
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 134
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const v5, 0x7f07053f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 135
    .local v2, "notify_news":Z
    const v5, 0x7f07053e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 136
    .local v1, "notify_messages":Z
    const v5, 0x7f070540

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 137
    .local v3, "notify_replies":Z
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 139
    invoke-static {v0}, Lcom/perm/kate/UpdateService;->cancel(Landroid/content/Context;)V

    .line 141
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const v6, 0x7f07052b

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    .end local v1    # "notify_messages":Z
    .end local v2    # "notify_news":Z
    .end local v3    # "notify_replies":Z
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static ensureRegularRefreshEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 107
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 109
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v3, 0x7f07052b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v3, 0x7f07053f

    .line 118
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v3, 0x7f07053e

    .line 119
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v3, 0x7f070540

    .line 120
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 121
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    invoke-static {v0}, Lcom/perm/kate/UpdateService;->schedule(Landroid/content/Context;)V

    .line 126
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private get(J)Lcom/perm/utils/WallSubscriptions$WallSubscription;
    .locals 5
    .param p1, "owner_id"    # J

    .prologue
    .line 53
    iget-object v1, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;

    .line 54
    .local v0, "ws":Lcom/perm/utils/WallSubscriptions$WallSubscription;
    iget-wide v2, v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 56
    .end local v0    # "ws":Lcom/perm/utils/WallSubscriptions$WallSubscription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/perm/utils/WallSubscriptions;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/perm/utils/WallSubscriptions;->instance:Lcom/perm/utils/WallSubscriptions;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/perm/utils/WallSubscriptions;

    invoke-direct {v0}, Lcom/perm/utils/WallSubscriptions;-><init>()V

    sput-object v0, Lcom/perm/utils/WallSubscriptions;->instance:Lcom/perm/utils/WallSubscriptions;

    .line 18
    sget-object v0, Lcom/perm/utils/WallSubscriptions;->instance:Lcom/perm/utils/WallSubscriptions;

    invoke-direct {v0}, Lcom/perm/utils/WallSubscriptions;->init()V

    .line 20
    :cond_0
    sget-object v0, Lcom/perm/utils/WallSubscriptions;->instance:Lcom/perm/utils/WallSubscriptions;

    return-object v0
.end method

.method private init()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 91
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v4, "wall_subscriptions"

    invoke-virtual {v3, v4, v6}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "i":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/perm/utils/WallSubscriptions;->keyOwner(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    return-void

    .line 97
    :cond_0
    new-instance v2, Lcom/perm/utils/WallSubscriptions$WallSubscription;

    invoke-direct {v2}, Lcom/perm/utils/WallSubscriptions$WallSubscription;-><init>()V

    .line 98
    .local v2, "ws":Lcom/perm/utils/WallSubscriptions$WallSubscription;
    invoke-direct {p0, v0}, Lcom/perm/utils/WallSubscriptions;->keyOwner(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    .line 99
    invoke-direct {p0, v0}, Lcom/perm/utils/WallSubscriptions;->keyTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    .line 100
    invoke-direct {p0, v0}, Lcom/perm/utils/WallSubscriptions;->keyType(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    .line 101
    iget-object v3, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    goto :goto_0
.end method

.method private keyOwner(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private keyTime(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private keyType(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/utils/WallSubscriptions$WallSubscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public save()V
    .locals 8

    .prologue
    .line 66
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v4, "wall_subscriptions"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "i":I
    iget-object v3, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/utils/WallSubscriptions$WallSubscription;

    .line 70
    .local v2, "ws":Lcom/perm/utils/WallSubscriptions$WallSubscription;
    invoke-direct {p0, v1}, Lcom/perm/utils/WallSubscriptions;->keyOwner(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v6, v2, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-direct {p0, v1}, Lcom/perm/utils/WallSubscriptions;->keyTime(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v6, v2, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-direct {p0, v1}, Lcom/perm/utils/WallSubscriptions;->keyType(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_0

    .line 75
    .end local v2    # "ws":Lcom/perm/utils/WallSubscriptions$WallSubscription;
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method

.method public subscribe(J)V
    .locals 1
    .param p1, "owner_id"    # J

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/perm/utils/WallSubscriptions;->subscribe(JI)V

    .line 28
    return-void
.end method

.method public subscribe(JI)V
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "type"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/perm/utils/WallSubscriptions;->subscribed(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;

    invoke-direct {v0}, Lcom/perm/utils/WallSubscriptions$WallSubscription;-><init>()V

    .line 34
    .local v0, "ws":Lcom/perm/utils/WallSubscriptions$WallSubscription;
    iput-wide p1, v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/perm/utils/TimeFix;->unfix(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    .line 38
    iput p3, v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    .line 39
    iget-object v1, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/perm/utils/WallSubscriptions;->save()V

    goto :goto_0
.end method

.method public subscribed(J)Z
    .locals 1
    .param p1, "owner_id"    # J

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/perm/utils/WallSubscriptions;->get(J)Lcom/perm/utils/WallSubscriptions$WallSubscription;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsubscribe(J)V
    .locals 3
    .param p1, "owner_id"    # J

    .prologue
    .line 44
    iget-object v0, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/perm/utils/WallSubscriptions;->get(J)Lcom/perm/utils/WallSubscriptions$WallSubscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/perm/utils/WallSubscriptions;->save()V

    .line 46
    return-void
.end method
