.class public Lcom/perm/utils/AudioBroadcast;
.super Ljava/lang/Object;
.source "AudioBroadcast.java"


# direct methods
.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->getTargetIds()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/api/Audio;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/api/Audio;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/perm/utils/AudioBroadcast;->broadcast(Lcom/perm/kate/api/Audio;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/perm/utils/AudioBroadcast;->enableBroadcastOnServer(Ljava/lang/String;)V

    return-void
.end method

.method private static broadcast(Lcom/perm/kate/api/Audio;Ljava/lang/String;)V
    .locals 5
    .param p0, "audio"    # Lcom/perm/kate/api/Audio;
    .param p1, "target_ids"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 113
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v4, v4}, Lcom/perm/kate/session/Session;->audioSetBroadcast(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static broadcastInThread(Lcom/perm/kate/api/Audio;)V
    .locals 1
    .param p0, "audio"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 101
    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/perm/utils/AudioBroadcast$1;

    invoke-direct {v0, p0}, Lcom/perm/utils/AudioBroadcast$1;-><init>(Lcom/perm/kate/api/Audio;)V

    .line 109
    invoke-virtual {v0}, Lcom/perm/utils/AudioBroadcast$1;->start()V

    goto :goto_0
.end method

.method private static enableBroadcastOnServer(Ljava/lang/String;)V
    .locals 1
    .param p0, "target_ids"    # Ljava/lang/String;

    .prologue
    .line 119
    new-instance v0, Lcom/perm/utils/AudioBroadcast$2;

    invoke-direct {v0, p0}, Lcom/perm/utils/AudioBroadcast$2;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/perm/utils/AudioBroadcast$2;->start()V

    .line 126
    return-void
.end method

.method private static getTargetIds()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v2

    iget-object v1, v2, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    .line 40
    .local v1, "user_id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast_target_ids_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "pref_name":Ljava/lang/String;
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 23
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v2, :cond_1

    .line 28
    .local v0, "target_ids":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 26
    .end local v0    # "target_ids":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->upgradeBroadcastPreferences()V

    .line 27
    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->getTargetIds()Ljava/lang/String;

    move-result-object v0

    .line 28
    .restart local v0    # "target_ids":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setEnabled(Ljava/lang/String;)V
    .locals 4
    .param p0, "target_ids"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast_target_ids_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v3

    iget-object v3, v3, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static showBroadcastDialog(Lcom/perm/kate/BaseActivity;)V
    .locals 26
    .param p0, "activity"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 129
    sget-object v21, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v21, :cond_0

    .line 193
    :goto_0
    return-void

    .line 131
    :cond_0
    sget-object v21, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual/range {v21 .. v21}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v12

    .line 132
    .local v12, "mid":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 133
    .local v2, "account_id":J
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .local v4, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v21, 0x7f07004d

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 135
    sget-object v21, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchManagedGroups(J)Ljava/util/ArrayList;

    move-result-object v8

    .line 136
    .local v8, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v16, v21, 0x1

    .line 137
    .local v16, "size":I
    move/from16 v0, v16

    new-array v10, v0, [Ljava/lang/CharSequence;

    .line 138
    .local v10, "items":[Ljava/lang/CharSequence;
    move/from16 v0, v16

    new-array v6, v0, [Z

    .line 139
    .local v6, "checked":[Z
    move/from16 v0, v16

    new-array v11, v0, [Ljava/lang/String;

    .line 140
    .local v11, "list_ids":[Ljava/lang/String;
    move/from16 v0, v16

    new-array v14, v0, [Z

    .line 141
    .local v14, "new_checked":[Z
    const/16 v21, 0x0

    const v22, 0x7f0701f7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v10, v21

    .line 143
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v18, "str_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/perm/utils/AudioBroadcast;->getTargetIds()Ljava/lang/String;

    move-result-object v20

    .line 146
    .local v20, "target_ids":Ljava/lang/String;
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_3

    .line 147
    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 148
    .local v19, "string_ids":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_2

    .line 149
    aget-object v21, v19, v9

    if-eqz v21, :cond_1

    .line 150
    aget-object v21, v19, v9

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 152
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 153
    .local v13, "my_page_checked":Z
    const/16 v21, 0x0

    aput-boolean v13, v6, v21

    .line 154
    const/16 v21, 0x0

    aput-boolean v13, v14, v21

    .line 156
    .end local v9    # "i":I
    .end local v13    # "my_page_checked":Z
    .end local v19    # "string_ids":[Ljava/lang/String;
    :cond_3
    const/16 v21, 0x0

    aput-object v12, v11, v21

    .line 157
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    .line 158
    add-int/lit8 v22, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/perm/kate/api/Group;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v10, v22

    .line 159
    const-wide/16 v22, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/perm/kate/api/Group;

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/perm/kate/api/Group;->gid:J

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    .line 160
    .local v17, "str_id":Ljava/lang/String;
    add-int/lit8 v21, v9, 0x1

    aput-object v17, v11, v21

    .line 161
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 162
    .local v7, "group_checked":Z
    add-int/lit8 v21, v9, 0x1

    aput-boolean v7, v6, v21

    .line 163
    add-int/lit8 v21, v9, 0x1

    aput-boolean v7, v14, v21

    .line 157
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 165
    .end local v7    # "group_checked":Z
    .end local v17    # "str_id":Ljava/lang/String;
    :cond_4
    new-instance v5, Lcom/perm/utils/AudioBroadcast$3;

    invoke-direct {v5, v14}, Lcom/perm/utils/AudioBroadcast$3;-><init>([Z)V

    .line 171
    .local v5, "check_listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    invoke-virtual {v4, v10, v6, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 172
    new-instance v15, Lcom/perm/utils/AudioBroadcast$4;

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v15, v0, v14, v11, v1}, Lcom/perm/utils/AudioBroadcast$4;-><init>(I[Z[Ljava/lang/String;Lcom/perm/kate/BaseActivity;)V

    .line 191
    .local v15, "ok_listener":Landroid/content/DialogInterface$OnClickListener;
    const v21, 0x7f070334

    move/from16 v0, v21

    invoke-virtual {v4, v0, v15}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private static upgradeBroadcastPreferences()V
    .locals 6

    .prologue
    .line 46
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v3, :cond_1

    .line 60
    .local v0, "account_id":Ljava/lang/String;
    .local v1, "old_pref_name":Ljava/lang/String;
    .local v2, "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 48
    .end local v0    # "account_id":Ljava/lang/String;
    .end local v1    # "old_pref_name":Ljava/lang/String;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 49
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v3

    iget-object v0, v3, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    .line 51
    .restart local v0    # "account_id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .restart local v1    # "old_pref_name":Ljava/lang/String;
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast_target_ids_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
