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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public static disableRegularRefreshIfRequired()V
    .locals 6

    .line 148
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 150
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/utils/WallSubscriptions;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 152
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_notify_news"

    const/4 v3, 0x1

    .line 153
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "key_notify_messages"

    .line 154
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "key_notify_replies"

    .line 155
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 158
    invoke-static {v0}, Lcom/perm/kate/UpdateService;->cancel(Landroid/content/Context;)V

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f0f015d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static ensureRegularRefreshEnabled()V
    .locals 5

    .line 126
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 128
    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v3, 0x7f0f015d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_notify_news"

    const/4 v3, 0x0

    .line 137
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_notify_messages"

    .line 138
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_notify_replies"

    .line 139
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    invoke-static {v0}, Lcom/perm/kate/UpdateService;->schedule(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private get(J)Lcom/perm/utils/WallSubscriptions$WallSubscription;
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/utils/WallSubscriptions$WallSubscription;

    .line 59
    iget-wide v2, v1, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/perm/utils/WallSubscriptions;
    .locals 2

    const-class v0, Lcom/perm/utils/WallSubscriptions;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/perm/utils/WallSubscriptions;->instance:Lcom/perm/utils/WallSubscriptions;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/perm/utils/WallSubscriptions;

    invoke-direct {v1}, Lcom/perm/utils/WallSubscriptions;-><init>()V

    sput-object v1, Lcom/perm/utils/WallSubscriptions;->instance:Lcom/perm/utils/WallSubscriptions;

    .line 21
    invoke-virtual {v1}, Lcom/perm/utils/WallSubscriptions;->init()V

    .line 23
    :cond_0
    sget-object v1, Lcom/perm/utils/WallSubscriptions;->instance:Lcom/perm/utils/WallSubscriptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private keyError(I)Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_error"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private keyOwner(I)Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private keyTime(I)Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_time"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private keyType(I)Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_type"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static shouldSkip(Lcom/perm/utils/WallSubscriptions$WallSubscription;)Z
    .locals 6

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    iget-wide v2, p0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->error_time:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    const p0, 0x5265c00

    int-to-long v4, p0

    add-long/2addr v4, v2

    cmp-long p0, v0, v4

    if-gez p0, :cond_0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string v0, "WallSubscriptions"

    const-string v1, "Skipped wall"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init()V
    .locals 9

    .line 109
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "wall_subscriptions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 113
    :goto_0
    invoke-direct {p0, v1}, Lcom/perm/utils/WallSubscriptions;->keyOwner(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v3, Lcom/perm/utils/WallSubscriptions$WallSubscription;

    invoke-direct {v3}, Lcom/perm/utils/WallSubscriptions$WallSubscription;-><init>()V

    .line 116
    invoke-direct {p0, v1}, Lcom/perm/utils/WallSubscriptions;->keyOwner(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    .line 117
    invoke-direct {p0, v1}, Lcom/perm/utils/WallSubscriptions;->keyTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    .line 118
    invoke-direct {p0, v1}, Lcom/perm/utils/WallSubscriptions;->keyType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    .line 119
    invoke-direct {p0, v1}, Lcom/perm/utils/WallSubscriptions;->keyError(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/utils/WallSubscriptions$WallSubscription;->error_time:J

    .line 120
    iget-object v4, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public save()V
    .locals 8

    .line 71
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "wall_subscriptions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 75
    iget-object v3, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/utils/WallSubscriptions$WallSubscription;

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v4, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-direct {p0, v2}, Lcom/perm/utils/WallSubscriptions;->keyOwner(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v4, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-direct {p0, v2}, Lcom/perm/utils/WallSubscriptions;->keyTime(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v4, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-direct {p0, v2}, Lcom/perm/utils/WallSubscriptions;->keyType(I)Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-direct {p0, v2}, Lcom/perm/utils/WallSubscriptions;->keyError(I)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v4, Lcom/perm/utils/WallSubscriptions$WallSubscription;->error_time:J

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public subscribe(J)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, p2, v0}, Lcom/perm/utils/WallSubscriptions;->subscribe(JI)V

    return-void
.end method

.method public subscribe(JI)V
    .locals 3

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/perm/utils/WallSubscriptions;->subscribed(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;

    invoke-direct {v0}, Lcom/perm/utils/WallSubscriptions$WallSubscription;-><init>()V

    .line 39
    iput-wide p1, v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Lcom/perm/utils/TimeFix;->unfix(J)J

    move-result-wide p1

    iput-wide p1, v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    .line 43
    iput p3, v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    .line 44
    iget-object p1, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/perm/utils/WallSubscriptions;->save()V

    return-void
.end method

.method public subscribed(J)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/perm/utils/WallSubscriptions;->get(J)Lcom/perm/utils/WallSubscriptions$WallSubscription;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unsubscribe(J)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/perm/utils/WallSubscriptions;->list:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/perm/utils/WallSubscriptions;->get(J)Lcom/perm/utils/WallSubscriptions$WallSubscription;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0}, Lcom/perm/utils/WallSubscriptions;->save()V

    return-void
.end method

.method public wallFailed(Lcom/perm/utils/WallSubscriptions$WallSubscription;)V
    .locals 2

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/perm/utils/WallSubscriptions$WallSubscription;->error_time:J

    .line 180
    invoke-virtual {p0}, Lcom/perm/utils/WallSubscriptions;->save()V

    return-void
.end method
