.class public abstract Lcom/perm/utils/AudioBroadcast;
.super Ljava/lang/Object;
.source "AudioBroadcast.java"


# direct methods
.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->getTargetIds()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/api/Audio;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/perm/utils/AudioBroadcast;->broadcast(Lcom/perm/kate/api/Audio;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/perm/utils/AudioBroadcast;->enableBroadcastOnServer(Ljava/lang/String;)V

    return-void
.end method

.method private static broadcast(Lcom/perm/kate/api/Audio;Ljava/lang/String;)V
    .locals 4

    .line 93
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/perm/kate/session/Session;->audioSetBroadcast(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method public static broadcastInThread(Lcom/perm/kate/api/Audio;)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/perm/utils/AudioBroadcast$1;

    invoke-direct {v0, p0}, Lcom/perm/utils/AudioBroadcast$1;-><init>(Lcom/perm/kate/api/Audio;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static enableBroadcastOnServer(Ljava/lang/String;)V
    .locals 1

    .line 99
    new-instance v0, Lcom/perm/utils/AudioBroadcast$2;

    invoke-direct {v0, p0}, Lcom/perm/utils/AudioBroadcast$2;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static getTargetIds()Ljava/lang/String;
    .locals 3

    .line 37
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast_target_ids_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled()Z
    .locals 1

    .line 23
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 25
    :cond_0
    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->getTargetIds()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static setEnabled(Ljava/lang/String;)V
    .locals 3

    .line 30
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast_target_ids_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static showBroadcastDialog(Lcom/perm/kate/BaseActivity;)V
    .locals 14

    .line 109
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 113
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0069

    .line 114
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 115
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v5}, Lcom/perm/kate/db/DataHelper;->fetchManagedGroups(JLjava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 117
    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 118
    new-array v5, v2, [Z

    .line 119
    new-array v6, v2, [Ljava/lang/String;

    .line 120
    new-array v7, v2, [Z

    const v8, 0x7f0f0252

    .line 121
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v4, v9

    .line 123
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->getTargetIds()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 126
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    const-string v11, ","

    .line 127
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 128
    :goto_0
    array-length v12, v10

    if-ge v11, v12, :cond_2

    .line 129
    aget-object v12, v10, v11

    if-eqz v12, :cond_1

    .line 130
    aget-object v12, v10, v11

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 133
    aput-boolean v10, v5, v9

    .line 134
    aput-boolean v10, v7, v9

    .line 136
    :cond_3
    aput-object v0, v6, v9

    .line 137
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    add-int/lit8 v0, v9, 0x1

    .line 138
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/Group;

    iget-object v10, v10, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    aput-object v10, v4, v0

    const-wide/16 v10, -0x1

    .line 139
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perm/kate/api/Group;

    iget-wide v12, v9, Lcom/perm/kate/api/Group;->gid:J

    mul-long v12, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 140
    aput-object v9, v6, v0

    .line 141
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 142
    aput-boolean v9, v5, v0

    .line 143
    aput-boolean v9, v7, v0

    move v9, v0

    goto :goto_1

    .line 145
    :cond_4
    new-instance v0, Lcom/perm/utils/AudioBroadcast$3;

    invoke-direct {v0, v7}, Lcom/perm/utils/AudioBroadcast$3;-><init>([Z)V

    .line 151
    invoke-virtual {v3, v4, v5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 152
    new-instance v0, Lcom/perm/utils/AudioBroadcast$4;

    invoke-direct {v0, v2, v7, v6, p0}, Lcom/perm/utils/AudioBroadcast$4;-><init>(I[Z[Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V

    const p0, 0x7f0f0398

    .line 171
    invoke-virtual {v3, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
