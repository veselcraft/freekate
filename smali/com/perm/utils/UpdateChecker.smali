.class public abstract Lcom/perm/utils/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.java"


# direct methods
.method static synthetic access$000(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/perm/utils/UpdateChecker;->displayAlert(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static check(Landroid/app/Activity;ZZ)V
    .locals 9

    const-string v0, "aal"

    const-string v1, "gzip"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "http://veselcraft.cc/freekate/version.json"

    .line 56
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x7530

    .line 57
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 58
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 60
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v4, 0x1

    .line 61
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v5, "Accept-Encoding"

    .line 62
    invoke-virtual {v3, v5, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 148
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 66
    :cond_0
    :try_start_2
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const-string v6, "Content-Encoding"

    .line 67
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 68
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v1

    .line 70
    :cond_1
    invoke-static {v5}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 72
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v6, "displayed_code"

    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 76
    invoke-interface {v7, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 78
    invoke-static {p0}, Lcom/perm/kate/Helper;->getVersionCode(Landroid/content/Context;)I

    move-result v8

    if-le v1, v8, :cond_4

    if-gt v1, v2, :cond_2

    if-eqz p2, :cond_4

    .line 80
    :cond_2
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 81
    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "name"

    .line 84
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "message"

    .line 85
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "market"

    .line 86
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez p2, :cond_3

    .line 88
    invoke-static {v2, v6, p0, v7}, Lcom/perm/kate/notifications/UpdateNotification;->display(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {v2, v6, p0, v7}, Lcom/perm/kate/notifications/UpdateNotification;->makeUpdateActivityIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 93
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/perm/kate/Helper;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    if-gt v1, v2, :cond_5

    if-eqz p2, :cond_5

    .line 94
    new-instance v1, Lcom/perm/utils/UpdateChecker$2;

    invoke-direct {v1}, Lcom/perm/utils/UpdateChecker$2;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    const-string v1, "r"

    .line 103
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-static {v1}, Lcom/perm/utils/GroupInvite;->setRatio(I)V

    if-nez p2, :cond_6

    .line 109
    invoke-static {p0, p1, v5}, Lcom/perm/utils/UpdateChecker;->newsAlert(Landroid/app/Activity;ZLorg/json/JSONObject;)V

    :cond_6
    const-string p0, "timefix"

    .line 112
    invoke-virtual {v5, p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/perm/utils/TimeFix;->setEnabled(Z)V

    .line 115
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x3

    .line 116
    invoke-virtual {v5, v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/perm/utils/AudioAdCounter;->setLimit(I)V

    :cond_7
    const-string p0, "bgml"

    .line 135
    sget p1, Lcom/perm/utils/BackgroundMusicCounter;->DEFAULT_LIMIT:I

    invoke-virtual {v5, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 136
    invoke-static {p0}, Lcom/perm/utils/BackgroundMusicCounter;->setLimit(I)V

    const-string p0, "s"

    const-string p1, ""

    .line 138
    invoke-virtual {v5, p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-static {p0}, Lcom/perm/utils/SpamHelper;->setServerRules(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 144
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_8

    goto :goto_3

    :catch_1
    move-exception p0

    .line 142
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_8

    .line 148
    :goto_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    :goto_4
    return-void

    :catchall_2
    move-exception p0

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 149
    :cond_9
    throw p0
.end method

.method public static checkOnThread(Landroid/app/Activity;ZZ)V
    .locals 1

    .line 31
    new-instance v0, Lcom/perm/utils/UpdateChecker$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/utils/UpdateChecker$1;-><init>(Landroid/app/Activity;ZZ)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static checkSometimes(Landroid/app/Activity;Z)V
    .locals 9

    .line 42
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_update_check"

    const-wide/16 v2, 0x0

    .line 43
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0xf731400

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    const/4 v2, 0x0

    .line 47
    invoke-static {p0, p1, v2}, Lcom/perm/utils/UpdateChecker;->checkOnThread(Landroid/app/Activity;ZZ)V

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static displayAlert(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 190
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 191
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 192
    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f0f0398

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const p1, 0x102000b

    .line 196
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 197
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private static displayAlertOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 181
    new-instance v0, Lcom/perm/utils/UpdateChecker$3;

    invoke-direct {v0, p1, p0}, Lcom/perm/utils/UpdateChecker$3;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static newsAlert(Landroid/app/Activity;ZLorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p1, "msg_id"

    .line 159
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "displayed_message_id"

    .line 161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 162
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gt p1, v2, :cond_1

    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const-string v2, "msg"

    .line 169
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 170
    invoke-static {p0, p2}, Lcom/perm/utils/UpdateChecker;->displayAlertOnUiThread(Landroid/app/Activity;Ljava/lang/String;)V

    .line 173
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
