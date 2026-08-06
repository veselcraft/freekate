.class public Lcom/perm/utils/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.java"


# direct methods
.method static synthetic access$000(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/perm/utils/UpdateChecker;->displayAlert(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static check(Landroid/app/Activity;ZZ)V
    .locals 24
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "have_session"    # Z
    .param p2, "manual"    # Z

    .prologue
    .line 55
    const/4 v3, 0x0

    .line 57
    .local v3, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    const-string v19, "http://s3-us-west-2.amazonaws.com/katemob/version.json"

    .line 58
    .local v19, "url":Ljava/lang/String;
    new-instance v21, Ljava/net/URL;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 59
    const/16 v21, 0x7530

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 60
    const/16 v21, 0x7530

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 61
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 62
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 63
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 64
    const-string v21, "Accept-Encoding"

    const-string v22, "gzip"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 66
    .local v2, "code":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v2, v0, :cond_1

    .line 131
    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 134
    .end local v2    # "code":I
    .end local v19    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v2    # "code":I
    .restart local v19    # "url":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    const/16 v22, 0x2000

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 69
    .local v8, "is":Ljava/io/InputStream;
    const-string v21, "Content-Encoding"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "enc":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v21, "gzip"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 71
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    move-object v8, v9

    .line 72
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-static {v8}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 73
    .local v14, "response":Ljava/lang/String;
    const-string v21, "Kate.UpdateChecker"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "checkUpdate response="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v15, "root":Lorg/json/JSONObject;
    const-string v21, "code"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 77
    .local v12, "new_code":I
    const-string v13, "displayed_code"

    .line 78
    .local v13, "pref_name":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 79
    .local v16, "settings":Landroid/content/SharedPreferences;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v13, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 81
    .local v4, "displayed_code":I
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Helper;->getVersionCode(Landroid/content/Context;)I

    move-result v21

    move/from16 v0, v21

    if-le v12, v0, :cond_4

    if-gt v12, v4, :cond_3

    if-eqz p2, :cond_4

    .line 83
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 84
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5, v13, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 88
    .local v20, "version_name":Ljava/lang/String;
    const-string v21, "message"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "message":Ljava/lang/String;
    const-string v21, "market"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 90
    .local v10, "market_url":Ljava/lang/String;
    if-nez p2, :cond_8

    .line 91
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v11, v1, v10}, Lcom/perm/kate/notifications/UpdateNotification;->display(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "market_url":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    .end local v20    # "version_name":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/perm/kate/Helper;->getVersionCode(Landroid/content/Context;)I

    move-result v21

    move/from16 v0, v21

    if-gt v12, v0, :cond_5

    if-eqz p2, :cond_5

    .line 97
    new-instance v21, Lcom/perm/utils/UpdateChecker$2;

    invoke-direct/range {v21 .. v21}, Lcom/perm/utils/UpdateChecker$2;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 106
    :cond_5
    const-string v21, "r"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 107
    .local v7, "group_invite_ratio":I
    invoke-static {v7}, Lcom/perm/utils/GroupInvite;->setRatio(I)V

    .line 111
    if-nez p2, :cond_6

    .line 112
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v15}, Lcom/perm/utils/UpdateChecker;->newsAlert(Landroid/app/Activity;ZLorg/json/JSONObject;)V

    .line 115
    :cond_6
    const-string v21, "timefix"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/perm/utils/TimeFix;->setEnabled(Z)V

    .line 120
    const-string v21, "split"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 121
    .local v17, "split_ads":I
    invoke-static/range {v17 .. v17}, Lcom/perm/kate/AdDisabler;->setSplitPercent(I)V

    .line 124
    const-string v21, "aal"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 125
    const-string v21, "aal"

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/perm/utils/AudioAdCounter;->setLimit(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_7
    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 93
    .end local v7    # "group_invite_ratio":I
    .end local v17    # "split_ads":I
    .restart local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v10    # "market_url":Ljava/lang/String;
    .restart local v11    # "message":Ljava/lang/String;
    .restart local v20    # "version_name":Ljava/lang/String;
    :cond_8
    :try_start_2
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v11, v1, v10}, Lcom/perm/kate/notifications/UpdateNotification;->makeUpdateActivityIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 126
    .end local v2    # "code":I
    .end local v4    # "displayed_code":I
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "enc":Ljava/lang/String;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v10    # "market_url":Ljava/lang/String;
    .end local v11    # "message":Ljava/lang/String;
    .end local v12    # "new_code":I
    .end local v13    # "pref_name":Ljava/lang/String;
    .end local v14    # "response":Ljava/lang/String;
    .end local v15    # "root":Lorg/json/JSONObject;
    .end local v16    # "settings":Landroid/content/SharedPreferences;
    .end local v19    # "url":Ljava/lang/String;
    .end local v20    # "version_name":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 131
    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 128
    :catch_1
    move-exception v18

    .line 129
    .local v18, "th":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 131
    .end local v18    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v21

    if-eqz v3, :cond_9

    .line 132
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v21
.end method

.method public static checkOnThread(Landroid/app/Activity;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "have_session"    # Z
    .param p2, "manual"    # Z

    .prologue
    .line 33
    new-instance v0, Lcom/perm/utils/UpdateChecker$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/utils/UpdateChecker$1;-><init>(Landroid/app/Activity;ZZ)V

    .line 38
    invoke-virtual {v0}, Lcom/perm/utils/UpdateChecker$1;->start()V

    .line 39
    return-void
.end method

.method public static checkSometimes(Landroid/app/Activity;Z)V
    .locals 10
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "have_session"    # Z

    .prologue
    .line 43
    const-string v6, "last_update_check"

    .line 44
    .local v6, "preference_name":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 45
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v8, 0x0

    invoke-interface {v7, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 46
    .local v0, "last_check":J
    const-wide/32 v2, 0xf731400

    .line 47
    .local v2, "max_period":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 48
    .local v4, "now":J
    sub-long v8, v4, v0

    cmp-long v8, v8, v2

    if-lez v8, :cond_0

    .line 49
    const/4 v8, 0x0

    invoke-static {p0, p1, v8}, Lcom/perm/utils/UpdateChecker;->checkOnThread(Landroid/app/Activity;ZZ)V

    .line 50
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    :cond_0
    return-void
.end method

.method private static displayAlert(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 174
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    .local v1, "s":Landroid/text/SpannableString;
    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 176
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070334

    const/4 v5, 0x0

    .line 178
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 180
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 181
    .local v2, "textview":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 182
    return-void
.end method

.method private static displayAlertOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lcom/perm/utils/UpdateChecker$3;

    invoke-direct {v0, p1, p0}, Lcom/perm/utils/UpdateChecker$3;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method private static newsAlert(Landroid/app/Activity;ZLorg/json/JSONObject;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "have_session"    # Z
    .param p2, "root"    # Lorg/json/JSONObject;

    .prologue
    .line 139
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    :try_start_0
    const-string v6, "msg_id"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 144
    .local v2, "message_id":I
    const-string v3, "displayed_message_id"

    .line 145
    .local v3, "message_pref_name":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 146
    .local v4, "settings":Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, "displayed_message_id":I
    if-le v2, v0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 153
    const-string v6, "msg"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/perm/utils/UpdateChecker;->displayAlertOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V

    .line 157
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0    # "displayed_message_id":I
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "message_id":I
    .end local v3    # "message_pref_name":Ljava/lang/String;
    .end local v4    # "settings":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v5

    .line 159
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
