.class public Lcom/perm/utils/SpamHelper;
.super Ljava/lang/Object;
.source "SpamHelper.java"


# static fields
.field private static count:I

.field private static hide_spam:Ljava/lang/Boolean;

.field private static keywords:[Ljava/lang/String;

.field static readMorePattern:Ljava/util/regex/Pattern;

.field private static sum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1613
    sput v0, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1614
    sput v0, Lcom/perm/utils/SpamHelper;->count:I

    .line 1618
    const-string v0, "\\[\\w*\\|[^\\]\\[]*(?:\u043f[\u0440p]\u043e\u0434[\u043eo]\u043b\u0436\u0435\u043d\u0438[\u0435e]|[\u043f\u03c0][\u043eo]\u043b\u043d[\u043eo][\u0441c]\u0442\u044c\u044e|\u041f\u041e\u0414\u041f\u0418\u0428\u0418\u0421\u042c|\u041f\u043e\u0434\u043f\u0438\u0441\u044b\u0432\u0430\u0439\u0441\u044f|\u0432 \u0438[\u0441c]\u0442\u043e\u0447\u043d\u0438\u043a\u0435|(\u0423\u0437\u043d\u0430\u0442\u044c|\u0421\u043c\u043e\u0442\u0440\u0435\u0442\u044c) (\u043e\u0442\u0432\u0435\u0442|(\u0432\u0441\u0435 )?\u0424\u041e\u0422\u041e)).*\\]"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/SpamHelper;->readMorePattern:Ljava/util/regex/Pattern;

    .line 1626
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/utils/SpamHelper;->hide_spam:Ljava/lang/Boolean;

    return-void
.end method

.method public static isHideSpamEnabled()Z
    .locals 3

    .prologue
    .line 1629
    sget-object v0, Lcom/perm/utils/SpamHelper;->hide_spam:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1630
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_hide_news_spam"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/SpamHelper;->hide_spam:Ljava/lang/Boolean;

    .line 1631
    :cond_0
    sget-object v0, Lcom/perm/utils/SpamHelper;->hide_spam:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSpam(Ljava/lang/String;)Z
    .locals 14
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 30
    .local v2, "t1":J
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 31
    :cond_0
    const/4 v7, 0x0

    .line 1591
    :cond_1
    :goto_0
    return v7

    .line 64
    :cond_2
    const-string v7, "\u041a\u0430\u043a \u0441\u0438\u0434\u044f \u0434\u043e\u043c\u0430 \u0432 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0435 \u0437"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 65
    const/16 v7, 0x8e

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V

    .line 66
    const/4 v7, 0x1

    goto :goto_0

    .line 86
    :cond_3
    const-string v7, "\u0420\u0435\u0448\u0438\u043b \u043e\u0434\u043d\u0430\u0436\u0434\u044b \u043f\u043e\u0441\u0447\u0438\u0442\u0430\u0442\u044c\u2026"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 88
    const/16 v7, 0x8

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V

    .line 89
    const/4 v7, 0x1

    goto :goto_0

    .line 98
    :cond_4
    const-string v7, "A\u0434\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 100
    const/16 v7, 0xa

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V

    .line 101
    const/4 v7, 0x1

    goto :goto_0

    .line 109
    :cond_5
    const-string v7, "\u0411\u0418\u0417\u041d\u0415\u0421 \u0418\u0414\u0415\u042f: \u0412\u042b\u0415\u0417\u0414"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 110
    const/16 v7, 0xa6

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V

    .line 111
    const/4 v7, 0x1

    goto :goto_0

    .line 113
    :cond_6
    const-string v7, "\u0411\u0438\u0437\u043d\u0435\u0441-\u0438\u0434\u0435\u044f: \u0412\u044b\u0435\u0437\u0434"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 114
    const/16 v7, 0xb3

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V

    .line 115
    const/4 v7, 0x1

    goto :goto_0

    .line 119
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xce4

    if-le v7, v8, :cond_8

    .line 120
    const/4 v7, 0x0

    goto :goto_0

    .line 123
    :cond_8
    :try_start_0
    const-string v7, "\u0440\u043e\u0437\u044b\u0433\u0440\u044b\u0448"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\u0420\u0430\u0437\u044b\u0433\u0440\u044b\u0432\u0430\u0435\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\u0434\u043e\u0441\u0442\u0430\u043d\u0435\u0442\u0441\u044f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\u0434\u043e\u0441\u0442\u0430\u043d\u0443\u0442\u0441\u044f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\u0434\u0430\u0440\u0438\u0442"

    .line 124
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\u0412\u044b\u0438\u0433\u0440\u0430\u0439"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\u0434\u0430\u0440\u0438\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\u0414\u0410\u0420\u0418\u041c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\u043f\u0440\u0438\u0437"

    .line 125
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "\u043e\u043d\u043a\u0443\u0440\u0441"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_9
    const-string v7, "\u0412\u0441\u0442\u0443\u043f\u0438 \u0432 \u0433\u0440\u0443\u043f\u043f\u0443"

    .line 127
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "\u0434\u0435\u043b\u0430\u0442\u044c \u0440\u0435\u043f\u043e\u0441\u0442"

    .line 130
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "\u0414\u0435\u043b\u0430\u0439 \u0440\u0435\u043f\u043e\u0441\u0442"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "\u0435\u043f\u043e\u0441\u0442 \u044d\u0442\u043e\u0439 \u0437\u0430\u043f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, " \u0437\u0430 \u0440\u0435\u043f\u043e\u0441\u0442"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f \u044d\u0442\u043e\u0439 \u0437\u0430\u043f\u0438\u0441\u044c\u044e"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "\u0441\u043b\u0443\u0447\u0430\u0439\u043d\u043e\u043c\u0443 \u043f\u043e\u0434\u043f\u0438\u0441\u0447\u0438\u043a\u0443"

    .line 131
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "\u0441\u043b\u0443\u0447\u0430\u0439\u043d\u044b\u043c \u043f\u043e\u0434\u043f\u0438\u0441\u0447\u0438\u043a\u0430\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "\u0441\u043b\u0443\u0447\u0430\u0439\u043d\u043e\u043c\u0443 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u0443"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "\u043f\u043e\u0434\u043f\u0438\u0441\u0447\u0438\u043a\u043e\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 134
    :cond_a
    const/16 v7, 0xb

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .local v4, "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    .end local v4    # "t3":J
    :cond_b
    :try_start_1
    const-string v7, "Titan Gel"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "Titan gel"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_c
    const-string v7, "\u0417a\u043a"

    .line 161
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "\u0417\u0410\u041a\u0410\u0417\u0410\u0422\u042c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "\u0437\u0430\u043a\u0430\u0437\u0430\u0442\u044c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 163
    :cond_d
    const/16 v7, 0xc

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    .end local v4    # "t3":J
    :cond_e
    :try_start_2
    const-string v7, "Black Mask"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "BLACK MASK"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 197
    :cond_f
    const/16 v7, 0xe

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 200
    .end local v4    # "t3":J
    :cond_10
    :try_start_3
    const-string v7, "\u041cACKA \u041f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 202
    const/16 v7, 0xf

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    .end local v4    # "t3":J
    :cond_11
    :try_start_4
    const-string v7, "\u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0438\u0440\u0443\u0439\u0442\u0435\u0441\u044c \u043f\u043e \u0441\u0441\u044b\u043b\u043a\u0435"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 210
    const/16 v7, 0x10

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 222
    .end local v4    # "t3":J
    :cond_12
    :try_start_5
    const-string v7, "\u0447\u0430\u0441\u044b \u0432 \u041f\u041e\u0414\u0410\u0420\u041e\u041a"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 224
    const/16 v7, 0x11

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 225
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 236
    .end local v4    # "t3":J
    :cond_13
    :try_start_6
    const-string v7, "\u0447\u0435\u043c OlympTrade"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "26 \u041b\u0415\u0422 \u0417\u0410\u0420\u0410\u0411\u041e\u0422\u0410\u041b\u0410"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "26 \u043b\u0435\u0442 \u0437\u0430\u0440\u0430\u0431\u043e\u0442\u0430\u043b\u0430"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 238
    :cond_14
    const/16 v7, 0x12

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 239
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    .end local v4    # "t3":J
    :cond_15
    :try_start_7
    const-string v7, "\u041c\u043e\u0439 \u0434\u043e\u043b\u0433 \u043f\u0435\u0440\u0435\u0432\u0430\u043b\u0438\u043b \u0437\u0430 1."

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 253
    const/16 v7, 0x14

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 254
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 256
    .end local v4    # "t3":J
    :cond_16
    :try_start_8
    const-string v7, "\u042f \u0441\u0442\u0443\u0434\u0435\u043d\u0442 \u0438 \u044f \u0437"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 258
    const/16 v7, 0x15

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 259
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    .end local v4    # "t3":J
    :cond_17
    :try_start_9
    const-string v7, "\u041d\u0430\u0447\u0438\u043d\u0430\u044e\u0449\u0430\u044f \u0432\u0438\u0434"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 263
    const/16 v7, 0x16

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 264
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .end local v4    # "t3":J
    :cond_18
    :try_start_a
    const-string v7, "\u0420\u0430\u0437\u0433\u043e\u0432\u043e\u0440\u044b \u043e \u043a\u043e\u0441\u043c\u0435\u0442\u0438\u043a\u0435,"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 271
    const/16 v7, 0x9a

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 272
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 274
    .end local v4    # "t3":J
    :cond_19
    :try_start_b
    const-string v7, "\u0415\u0451 \u043f\u0440\u043e\u0448\u043b\u043e\u0435 \u0432\u0438\u0434\u0435\u043e \u0441"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 275
    const/16 v7, 0xb4

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 276
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 278
    .end local v4    # "t3":J
    :cond_1a
    :try_start_c
    const-string v7, "E\u0451 \u043f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 279
    const/16 v7, 0xc3

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 280
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    .end local v4    # "t3":J
    :cond_1b
    :try_start_d
    const-string v7, "\u041e\u043d\u0430 \u0442\u0430\u043b\u0430\u043d\u0442\u043b\u0438\u0432\u0430 \u0438 \u0445"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 283
    const/16 v7, 0xc4

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 284
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 286
    .end local v4    # "t3":J
    :cond_1c
    :try_start_e
    const-string v7, "\u0415\u0439 \u043c\u0430\u043b\u043e 40 "

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 287
    const/16 v7, 0xc5

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 288
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 290
    .end local v4    # "t3":J
    :cond_1d
    :try_start_f
    const-string v7, "\u0424\u0430\u043d\u0430\u0442\u043a\u0430 \u043d\u0430\u0448\u0443\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 291
    const/16 v7, 0xd4

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 292
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    .end local v4    # "t3":J
    :cond_1e
    :try_start_10
    const-string v7, "\u0415\u0451 \u043f\u0440\u043e\u0448\u043b\u044b\u0439 \u0440\u043e\u043b\u0438\u043a \u0441"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 295
    const/16 v7, 0xe4

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 296
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 332
    .end local v4    # "t3":J
    :cond_1f
    :try_start_11
    const-string v7, "\u041d\u0430\u0434\u043e\u0435\u043b\u043e \u0441\u0438\u0434\u0435\u0442\u044c \u0431\u0435\u0437 \u0434\u0435\u043d\u0435\u0433?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 334
    const/16 v7, 0x1b

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 335
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 342
    .end local v4    # "t3":J
    :cond_20
    :try_start_12
    const-string v7, "\u041d\u0430\u0434o"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 344
    const/16 v7, 0x1d

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 345
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    .end local v4    # "t3":J
    :cond_21
    :try_start_13
    const-string v7, "\u041da\u0434"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 348
    const/16 v7, 0x91

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 349
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 357
    .end local v4    # "t3":J
    :cond_22
    :try_start_14
    const-string v7, "Chokolate Slim"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 359
    const/16 v7, 0x1f

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 360
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 363
    .end local v4    # "t3":J
    :cond_23
    :try_start_15
    const-string v7, "\u041c\u0430\u0433\u043d\u0438\u0442\u043d\u044b\u0439 \u043a\u043e\u0440\u0440\u0435\u043a\u0442\u043e\u0440 \u043e\u0441\u0430\u043d\u043a\u0438"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 365
    const/16 v7, 0x20

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 366
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 383
    .end local v4    # "t3":J
    :cond_24
    :try_start_16
    const-string v7, "\u043b\u0438\u0442\u043d\u044b\u0435"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26

    const-string v7, "\u0447\u0430\u0441\u044b"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26

    const-string v7, "\u0417\u0430\u043a\u0430\u0436\u0438"

    .line 385
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, "\u0417\u0410\u041a\u0410\u0416\u0418"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, "\u0417\u0430\u043a\u0430\u0437\u0430\u0442\u044c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, "\u0437\u0430\u043a\u0430\u0437"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 387
    :cond_25
    const/16 v7, 0x22

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 388
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 395
    .end local v4    # "t3":J
    :cond_26
    :try_start_17
    const-string v7, "\u0421\u0415\u0417\u041e\u041d\u041d\u0410\u042f \u0420\u0410\u0421\u041f\u0420\u041e\u0414\u0410\u0416\u0410 \u041d"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 397
    const/16 v7, 0xdb

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 398
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 402
    .end local v4    # "t3":J
    :cond_27
    :try_start_18
    const-string v7, "Fast Hair Straightener"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 404
    const/16 v7, 0x24

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 405
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 408
    .end local v4    # "t3":J
    :cond_28
    :try_start_19
    const-string v7, "Ab Gymnic"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 410
    const/16 v7, 0x25

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 411
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 413
    .end local v4    # "t3":J
    :cond_29
    :try_start_1a
    const-string v7, "\u041f\u043e\u044f\u0441 \u0434\u043b\u044f \u043f\u0440\u0435\u0441\u0441\u0430"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 415
    const/16 v7, 0xcc

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 416
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    .end local v4    # "t3":J
    :cond_2a
    :try_start_1b
    const-string v7, "\u0423\u043d\u0438\u043a\u0430\u043b\u044c\u043d\u044b\u0439 \u043f\u043e\u044f\u0441 \u0434\u043b\u044f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 419
    const/16 v7, 0xd5

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 420
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 422
    .end local v4    # "t3":J
    :cond_2b
    :try_start_1c
    const-string v7, "\ud83d\udd25\u0423\u043d\u0438\u043a\u0430\u043b\u044c\u043d\u044b\u0439 \u043f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 423
    const/16 v7, 0xdc

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 424
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 427
    .end local v4    # "t3":J
    :cond_2c
    :try_start_1d
    const-string v7, "\u041d\u0438\u043a \u043d\u0430 \u0441\u0430\u0439\u0442\u0435"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2d

    const-string v7, "\u041d\u0438\u043a \u043da \u0441\u0430\u0439\u0442\u0435"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2f

    :cond_2d
    const-string v7, "\u0434\u0438\u043d\u043e\u043a\u0438\u0435 \u043c\u0430\u043c\u043e\u0447\u043a\u0438"

    .line 428
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    const-string v7, "\u0446\u0435\u043f\u043b\u044f\u0442\u044c \u0434\u0430\u043c\u043e\u0447\u0435\u043a"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2e

    const-string v7, "\u041d\u0438\u043a\u0430\u043a\u0438\u0445 \u043e\u0442\u043d\u043e\u0448"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 430
    :cond_2e
    const/16 v7, 0x26

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 431
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    .end local v4    # "t3":J
    :cond_2f
    :try_start_1e
    const-string v7, "\u0411\u044b\u0442\u044c \u0442\u043e\u043b\u0441\u0442\u043e\u0439"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_30

    const-string v7, "\u0437\u0430\u043a\u0430\u0437\u0430\u043b\u0430 \u043e\u0434\u043d\u0443 \u0443\u043f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 439
    const/16 v7, 0x27

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 440
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 443
    .end local v4    # "t3":J
    :cond_30
    :try_start_1f
    const-string v7, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0435\u043d\u0438\u0435 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u0432\u0441\u0435\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 445
    const/16 v7, 0x28

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 446
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 450
    .end local v4    # "t3":J
    :cond_31
    :try_start_20
    const-string v7, "\u043e\u0431\u044f\u0437a\u0442"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_32

    const-string v7, "\u043do\u0440\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 452
    const/16 v7, 0x29

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 453
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 462
    .end local v4    # "t3":J
    :cond_32
    :try_start_21
    const-string v7, "\ud83c\udf88 \u041c\u0423\u0416\u0418\u041a"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 464
    const/16 v7, 0xcd

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 465
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 477
    .end local v4    # "t3":J
    :cond_33
    :try_start_22
    const-string v7, "Baellery"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "Baellerry"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "Baelerry"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "Luminor Panerai"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "Shark Sport"

    .line 478
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "CarWallet"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_34

    const-string v7, "BAELLERRY-Business"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 480
    :cond_34
    const/16 v7, 0x2b

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 481
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 491
    .end local v4    # "t3":J
    :cond_35
    :try_start_23
    const-string v7, "\u041a\u043e\u043b\u044c\u0446\u043e \u0432\u0441\u0435\u0432\u043b\u0430\u0441\u0442\u0438\u044f \u0441"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 493
    const/16 v7, 0xdd

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 494
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 500
    .end local v4    # "t3":J
    :cond_36
    :try_start_24
    const-string v7, "\u041a\u0421\u0411 55"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    const-string v7, "\u0430\u043a\u0430\u0437"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_37

    const-string v7, "\u0410\u041a\u0410\u0417"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 502
    :cond_37
    const/16 v7, 0x2c

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 503
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    .end local v4    # "t3":J
    :cond_38
    :try_start_25
    const-string v7, "\u0412\u041d\u0418\u041c\u0410\u041d\u0418\u0415!!! \u0412\u0415\u0421\u0415\u041d\u041d\u042f\u042f \u0420\u0410\u0421\u041f\u0420"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 507
    const/16 v7, 0xe5

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 508
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 517
    .end local v4    # "t3":J
    :cond_39
    :try_start_26
    const-string v7, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0435\u043d\u0438\u0435 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u043f\u043e\u0434\u043f\u0438\u0441\u0447\u0438\u043a\u0430\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 519
    const/16 v7, 0x2d

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 520
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 529
    .end local v4    # "t3":J
    :cond_3a
    :try_start_27
    const-string v7, "\u041d\u0438\u043a\u0430\u043a\u0438\u0445 \u043f\u0440\u0435\u043f\u0430\u0440\u0430\u0442\u043e\u0432 \u0438 \u0442\u0430\u0431\u043b\u0435\u0442\u043e\u043a"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 531
    const/16 v7, 0x2e

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 532
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 538
    .end local v4    # "t3":J
    :cond_3b
    :try_start_28
    const-string v7, "\u041d\u0435 \u043f\u043e\u0434\u043f\u0438\u0441\u044b\u0432\u0430\u0439\u0442\u0435\u0441\u044c \u043d\u0430 \u043d\u0430\u0448"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 540
    const/16 v7, 0x2f

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 541
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 552
    .end local v4    # "t3":J
    :cond_3c
    :try_start_29
    const-string v7, "\u041c\u043b\u0438\u043d, \u0434\u0435\u0432\u043e\u0447\u043a\u0438!!!\ud83d\ude12"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 553
    const/16 v7, 0xa7

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 554
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 609
    .end local v4    # "t3":J
    :cond_3d
    :try_start_2a
    const-string v7, "\u0421\u0438\u0434\u0438\u0448\u044c \u0431\u0435\u0437 \u0434\u0435\u043d\u0435\u0433"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 610
    const/16 v7, 0x92

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_0
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 611
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 645
    .end local v4    # "t3":J
    :cond_3e
    :try_start_2b
    const-string v7, "\u0418\u0433pa"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 647
    const/16 v7, 0x3b

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 648
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 675
    .end local v4    # "t3":J
    :cond_3f
    :try_start_2c
    const-string v7, "\u041a\u0430\u0437\u0438\u043d\u043e \u0412\u0443\u043b\u043a\u0430\u043d "

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 677
    const/16 v7, 0x41

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_0
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 678
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 685
    .end local v4    # "t3":J
    :cond_40
    :try_start_2d
    const-string v7, "\ud83d\ude14 \u041d\u0435 \u0437\u043d\u0430\u0435\u0448\u044c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 687
    const/16 v7, 0x43

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_0
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 688
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    .end local v4    # "t3":J
    :cond_41
    :try_start_2e
    const-string v7, "\u0412\u0441\u0435 \u0443\u0436\u0435 \u043d\u0430\u0431\u0438\u0432\u0430\u044e\u0442"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 691
    const/16 v7, 0x93

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_0
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    .line 692
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 694
    .end local v4    # "t3":J
    :cond_42
    :try_start_2f
    const-string v7, "\u0423\u043c\u0435\u0435\u0448\u044c \u0438\u0433\u0440\u0430\u0442\u044c \u0432 \u043f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 695
    const/16 v7, 0x94

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_0
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    .line 696
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 698
    .end local v4    # "t3":J
    :cond_43
    :try_start_30
    const-string v7, "\u041d\u0435\u0445\u0432\u0430\u0442\u043a\u0430 \u0434\u0435\u043d\u0435\u0433?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 699
    const/16 v7, 0x95

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_0
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 700
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 702
    .end local v4    # "t3":J
    :cond_44
    :try_start_31
    const-string v7, "Hex\u0432"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 703
    const/16 v7, 0xa8

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_0
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    .line 704
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 706
    .end local v4    # "t3":J
    :cond_45
    :try_start_32
    const-string v7, "\u041de\u0445"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 707
    const/16 v7, 0xa9

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_0
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    .line 708
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 730
    .end local v4    # "t3":J
    :cond_46
    :try_start_33
    const-string v7, "\ud83d\ude02 \u041a\u043e\u0440\u0435\u0448"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 731
    const/16 v7, 0x9d

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_0
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 732
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 760
    .end local v4    # "t3":J
    :cond_47
    :try_start_34
    const-string v7, "RingHeart"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 762
    const/16 v7, 0x45

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_0
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    .line 763
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 782
    .end local v4    # "t3":J
    :cond_48
    :try_start_35
    const-string v7, "\u0423\u0437\u043d\u0430\u0439 \u0441\u0432\u043e\u044e \u0441\u043e\u0432\u043c\u0435\u0441\u0442\u0438\u043c\u043e\u0441\u0442\u044c \u0441 \u043b\u044e\u0431\u0438\u043c\u044b\u043c \u0447\u0435\u043b\u043e\u0432\u0435\u043a\u043e\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 784
    const/16 v7, 0x47

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_0
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 785
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 804
    .end local v4    # "t3":J
    :cond_49
    :try_start_36
    const-string v7, "\u0414\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u0432\u0441\u0435\u043c \u043f\u043e\u0434\u043f\u0438\u0441\u0447\u0438\u043a\u0430\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 806
    const/16 v7, 0x49

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_0
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    .line 807
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 815
    .end local v4    # "t3":J
    :cond_4a
    :try_start_37
    const-string v7, "\ud83d\udc83 \u0423\u0442\u044f\u0433\u0438\u0432\u0430\u044e\u0449\u0438\u0439"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 816
    const/16 v7, 0xae

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_0
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    .line 817
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 853
    .end local v4    # "t3":J
    :cond_4b
    :try_start_38
    const-string v7, " \u0447\u043b\u0435\u043d "

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4c

    const-string v7, " \u0447\u043b\u0435\u043d\u0430 "

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4e

    :cond_4c
    const-string v7, "y\u0432e\u043b\u0438\u0447"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4d

    const-string v7, "\u0443\u0432\u0435\u043b\u0438\u0447"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 855
    :cond_4d
    const/16 v7, 0x4c

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_0
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    .line 856
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 862
    .end local v4    # "t3":J
    :cond_4e
    :try_start_39
    const-string v7, "\u0447\u0430\u0441\u044b \u0441\u043e \u0441\u043a\u0438\u0434\u043a\u043e\u0439"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 864
    const/16 v7, 0x4d

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_0
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    .line 865
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 889
    .end local v4    # "t3":J
    :cond_4f
    :try_start_3a
    const-string v7, "\u0414\u0435\u0432\u043e\u0447\u043a\u0438, \u0443 \u0432\u0430\u0441 \u043a\u043e\u0433\u0434\u0430-\u043d"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 891
    const/16 v7, 0x51

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_0
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    .line 892
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 896
    .end local v4    # "t3":J
    :cond_50
    :try_start_3b
    const-string v7, "Wild Alligator"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 898
    const/16 v7, 0x52

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_0
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    .line 899
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 901
    .end local v4    # "t3":J
    :cond_51
    :try_start_3c
    const-string v7, "\u041c\u0443\u0436\u0438\u043a\u0438, \u044d\u0442\u043e \u0448\u043e\u043a"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 903
    const/16 v7, 0x53

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_0
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    .line 904
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 924
    .end local v4    # "t3":J
    :cond_52
    :try_start_3d
    const-string v7, "happyportrait4u"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 926
    const/16 v7, 0x55

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_0
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    .line 927
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 930
    .end local v4    # "t3":J
    :cond_53
    :try_start_3e
    const-string v7, " 6990"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_54

    const-string v7, "iPhone"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 932
    const/16 v7, 0x56

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_0
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    .line 933
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 935
    .end local v4    # "t3":J
    :cond_54
    :try_start_3f
    const-string v7, "\u041c\u0435\u0441\u044f\u0446 \u043d\u0430\u0437\u0430\u0434 \u0437\u0430\u043a\u0430\u0437\u044b\u0432\u0430\u043b\u0430 iphone"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 937
    const/16 v7, 0x57

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_0
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    .line 938
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 940
    .end local v4    # "t3":J
    :cond_55
    :try_start_40
    const-string v7, "\u041c\u0435\u0441\u044f\u0446 \u043d\u0430\u0437\u0430\u0434 \u0437\u0430\u043a\u0430\u0437\u044b\u0432\u0430\u043b \u043a\u043e\u043f\u0438\u044e i"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 942
    const/16 v7, 0xce

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_0
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    .line 943
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 969
    .end local v4    # "t3":J
    :cond_56
    :try_start_41
    const-string v7, "\u041fa\u0440"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 971
    const/16 v7, 0x5b

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_0
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    .line 972
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 974
    .end local v4    # "t3":J
    :cond_57
    :try_start_42
    const-string v7, "\u0414e\u0432"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 976
    const/16 v7, 0x5c

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_0
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    .line 977
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 986
    .end local v4    # "t3":J
    :cond_58
    :try_start_43
    const-string v7, "\u042d\u0442\u043e \u0434\u043e\u043b\u0436\u043d\u043e \u0431\u044b\u0442\u044c \u0443 \u043a\u0430\u0436\u0434\u043e\u0433\u043e!"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 988
    const/16 v7, 0x5e

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_0
    .catchall {:try_start_43 .. :try_end_43} :catchall_0

    .line 989
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 991
    .end local v4    # "t3":J
    :cond_59
    :try_start_44
    const-string v7, "\u042d\u0422\u041e \u0414\u041e\u041b\u0416\u041d\u041e \u0411\u042b\u0422\u042c \u0423 \u041a\u0410\u0416\u0414\u041e\u0413\u041e!"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 993
    const/16 v7, 0xde

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_0
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    .line 994
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1012
    .end local v4    # "t3":J
    :cond_5a
    :try_start_45
    const-string v7, "[club130934561|"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 1014
    const/16 v7, 0x60

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_0
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    .line 1015
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1042
    .end local v4    # "t3":J
    :cond_5b
    :try_start_46
    const-string v7, "\u041e \u0427\u0415\u041c \u041c\u041e\u041b\u0427\u0410\u0422 \u0414\u0418\u0415\u0422\u041e\u041b\u041e\u0413\u0418?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 1044
    const/16 v7, 0x64

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_0
    .catchall {:try_start_46 .. :try_end_46} :catchall_0

    .line 1045
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1052
    .end local v4    # "t3":J
    :cond_5c
    :try_start_47
    const-string v7, "\u0414\u0415\u0412\u041e\u0427\u041a\u0418, \u042d\u0422\u041e"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 1054
    const/16 v7, 0x66

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_0
    .catchall {:try_start_47 .. :try_end_47} :catchall_0

    .line 1055
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1062
    .end local v4    # "t3":J
    :cond_5d
    :try_start_48
    const-string v7, "\u041f\u0440\u0438\u0432\u0435\u0442 \u0434\u0435\u0432\u043e\u0447\u043a\u0438) \u0415\u0441\u043b\u0438"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 1064
    const/16 v7, 0x68

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_0
    .catchall {:try_start_48 .. :try_end_48} :catchall_0

    .line 1065
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1067
    .end local v4    # "t3":J
    :cond_5e
    :try_start_49
    const-string v7, "\u041d\u0430\u0447\u0438\u043d\u0430\u0439\u0442\u0435 \u044d\u043a\u043e\u043d\u043e\u043c\u0438\u0442\u044c \u0441 \u043d\u0430\u043c\u0438 ,"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 1069
    const/16 v7, 0x69

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_0
    .catchall {:try_start_49 .. :try_end_49} :catchall_0

    .line 1070
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1072
    .end local v4    # "t3":J
    :cond_5f
    :try_start_4a
    const-string v7, "\ud83d\udd25 \u041d\u041e\u0412\u0410\u042f \u041f\u0410\u0420\u0422\u0418\u042f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 1074
    const/16 v7, 0x6a

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_0
    .catchall {:try_start_4a .. :try_end_4a} :catchall_0

    .line 1075
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1077
    .end local v4    # "t3":J
    :cond_60
    :try_start_4b
    const-string v7, "\u0411\u0438\u0437\u043d\u0435\u0441-\u0438\u0434\u0435\u044f. \u041f\u0440\u043e\u0434\u0430\u0436\u0430 \u0442\u0440\u0435\u043d\u0434\u043e\u0432\u044b\u0445"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 1079
    const/16 v7, 0x6b

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_0
    .catchall {:try_start_4b .. :try_end_4b} :catchall_0

    .line 1080
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1082
    .end local v4    # "t3":J
    :cond_61
    :try_start_4c
    const-string v7, "\u0411\u0438\u0437\u043d\u0435\u0441-\u0438\u0434\u0435\u044f. \u041f\u043e\u0441\u0440\u0435\u0434\u043d\u0438\u0447\u0435\u0441\u0442\u0432\u043e"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 1084
    const/16 v7, 0x6c

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_0
    .catchall {:try_start_4c .. :try_end_4c} :catchall_0

    .line 1085
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1087
    .end local v4    # "t3":J
    :cond_62
    :try_start_4d
    const-string v7, "\u041a\u0430\u043a \u044f \u0431\u0440\u043e\u0441\u0438\u043b \u043a\u0443\u0440\u0438\u0442\u044c \u0437\u0430 2"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 1089
    const/16 v7, 0x6d

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_0
    .catchall {:try_start_4d .. :try_end_4d} :catchall_0

    .line 1090
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1097
    .end local v4    # "t3":J
    :cond_63
    :try_start_4e
    const-string v7, "\u0412c\u0435\u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 1099
    const/16 v7, 0x6f

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_0
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0

    .line 1100
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1109
    .end local v4    # "t3":J
    :cond_64
    :try_start_4f
    const-string v7, "\u0410\u043a\u043ay\u0440"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 1111
    const/16 v7, 0x71

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_0
    .catchall {:try_start_4f .. :try_end_4f} :catchall_0

    .line 1112
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1116
    .end local v4    # "t3":J
    :cond_65
    :try_start_50
    const-string v7, "\u0413o\u043b"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 1118
    const/16 v7, 0x72

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_0
    .catchall {:try_start_50 .. :try_end_50} :catchall_0

    .line 1119
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1121
    .end local v4    # "t3":J
    :cond_66
    :try_start_51
    const-string v7, "\"\u0421\u0443\u043f\u0435\u0440\u0433\u0435\u0440\u043e\u0438\" \u0438\u0437 \u0413\u043e\u043b\u043b\u0438\u0432\u0443\u0434\u0430"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1123
    const/16 v7, 0x73

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_0
    .catchall {:try_start_51 .. :try_end_51} :catchall_0

    .line 1124
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1126
    .end local v4    # "t3":J
    :cond_67
    :try_start_52
    const-string v7, "C\u043a\u043e"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 1128
    const/16 v7, 0x74

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_0
    .catchall {:try_start_52 .. :try_end_52} :catchall_0

    .line 1129
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1131
    .end local v4    # "t3":J
    :cond_68
    :try_start_53
    const-string v7, "\u0421\u043a\u043e\u043b\u044c\u043a\u043e \u043b\u0430\u0439\u043a\u043e\u0432 \u0437\u0430\u0441\u043b\u0443\u0436\u0438\u0432\u0430\u0435\u0442"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 1133
    const/16 v7, 0x75

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_0
    .catchall {:try_start_53 .. :try_end_53} :catchall_0

    .line 1134
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1136
    .end local v4    # "t3":J
    :cond_69
    :try_start_54
    const-string v7, "\u0422\u043e\u043b\u044c\u043a\u043e \u0433\u0435\u0439 \u043d\u0435 "

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 1138
    const/16 v7, 0x76

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_0
    .catchall {:try_start_54 .. :try_end_54} :catchall_0

    .line 1139
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1141
    .end local v4    # "t3":J
    :cond_6a
    :try_start_55
    const-string v7, "1 \u043b\u0430\u0439\u043a ="

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 1143
    const/16 v7, 0x77

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_0
    .catchall {:try_start_55 .. :try_end_55} :catchall_0

    .line 1144
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1146
    .end local v4    # "t3":J
    :cond_6b
    :try_start_56
    const-string v7, "\u041b\u0430\u0439\u043a \u0435\u0441\u043b\u0438 \u0438"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 1148
    const/16 v7, 0x78

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_0
    .catchall {:try_start_56 .. :try_end_56} :catchall_0

    .line 1149
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1151
    .end local v4    # "t3":J
    :cond_6c
    :try_start_57
    const-string v7, "\u0415\u0441\u043b\u0438 \u0442\u044b \u043d\u0435 \u0433\u043e\u043c\u043e"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 1153
    const/16 v7, 0x79

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_0
    .catchall {:try_start_57 .. :try_end_57} :catchall_0

    .line 1154
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1156
    .end local v4    # "t3":J
    :cond_6d
    :try_start_58
    const-string v7, "\u0421\u044b\u0433\u0440\u0430\u0435\u043c \u0432 \u0438\u0433\u0440\u0443: \u0443"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 1158
    const/16 v7, 0x7a

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_0
    .catchall {:try_start_58 .. :try_end_58} :catchall_0

    .line 1159
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1161
    .end local v4    # "t3":J
    :cond_6e
    :try_start_59
    const-string v7, "\u0413\u043e\u043b\u0430\u044f \u0434\u0435\u0432\u0443\u0448\u043a\u0430 \u0437\u0430 \u0447\u0430\u0441 "

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 1162
    const/16 v7, 0xaf

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_0
    .catchall {:try_start_59 .. :try_end_59} :catchall_0

    .line 1163
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1183
    .end local v4    # "t3":J
    :cond_6f
    :try_start_5a
    const-string v7, "\u0416y"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1185
    const/16 v7, 0x7e

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_0
    .catchall {:try_start_5a .. :try_end_5a} :catchall_0

    .line 1186
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1189
    .end local v4    # "t3":J
    :cond_70
    :try_start_5b
    const-string v7, "\u2705 \u0412\u044b \u0445\u043e\u0442\u0438\u0442\u0435"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 1191
    const/16 v7, 0x7f

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_0
    .catchall {:try_start_5b .. :try_end_5b} :catchall_0

    .line 1192
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1222
    .end local v4    # "t3":J
    :cond_71
    :try_start_5c
    const-string v7, "\u0418\u0433p"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 1224
    const/16 v7, 0x85

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_0
    .catchall {:try_start_5c .. :try_end_5c} :catchall_0

    .line 1225
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1227
    .end local v4    # "t3":J
    :cond_72
    :try_start_5d
    const-string v7, "\u0418\u0433\u0440\u0430\u0435\u0448\u044c \u0432 \u043f\u043e\u043a\u0435\u0440?"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1228
    const/16 v7, 0x9f

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_0
    .catchall {:try_start_5d .. :try_end_5d} :catchall_0

    .line 1229
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1231
    .end local v4    # "t3":J
    :cond_73
    :try_start_5e
    const-string v7, "\u0420\u0435\u0431\u044f\u0442\u0430! \n\u041f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 1233
    const/16 v7, 0x86

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_0
    .catchall {:try_start_5e .. :try_end_5e} :catchall_0

    .line 1234
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1236
    .end local v4    # "t3":J
    :cond_74
    :try_start_5f
    const-string v7, "\u0420e\u0431"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 1237
    const/16 v7, 0x98

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_0
    .catchall {:try_start_5f .. :try_end_5f} :catchall_0

    .line 1238
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1240
    .end local v4    # "t3":J
    :cond_75
    :try_start_60
    const-string v7, "\u041f\u0420\u0418\u0412\u0415\u0422\u0421\u0422\u0412\u0415\u041d\u041d\u042b\u0419 \u0411\u041e\u041d"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 1241
    const/16 v7, 0xc6

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_0
    .catchall {:try_start_60 .. :try_end_60} :catchall_0

    .line 1242
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1244
    .end local v4    # "t3":J
    :cond_76
    :try_start_61
    const-string v7, "\u041b\u044e\u0431\u0438\u0448\u044c \u0438\u0433\u0440\u0430\u0442\u044c \u043f\u043e\u043a"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1245
    const/16 v7, 0xc7

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_0
    .catchall {:try_start_61 .. :try_end_61} :catchall_0

    .line 1246
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1249
    .end local v4    # "t3":J
    :cond_77
    :try_start_62
    const-string v7, "\u0420\u0435\u0448\u0430\u0442\u044c \u0442\u0435\u0431\u0435 \u043f\u043e\u0434\u043f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 1251
    const/16 v7, 0x87

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_0
    .catchall {:try_start_62 .. :try_end_62} :catchall_0

    .line 1252
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1256
    .end local v4    # "t3":J
    :cond_78
    :try_start_63
    const-string v7, "\u0412\u0435\u0440\u043d\u0451\u043c \u0412\u0430\u043c 5.5%"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 1258
    const/16 v7, 0x88

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_0
    .catchall {:try_start_63 .. :try_end_63} :catchall_0

    .line 1259
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1261
    .end local v4    # "t3":J
    :cond_79
    :try_start_64
    const-string v7, "\u041f\u043e\u043a\u0443\u043f\u0430\u0442\u044c \u0432\u0435\u0449\u0438 \u0447\u0435\u0440\u0435\u0437 \u043d\u0430\u0448 \u043a"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 1262
    const/16 v7, 0xb0

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_0
    .catchall {:try_start_64 .. :try_end_64} :catchall_0

    .line 1263
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1265
    .end local v4    # "t3":J
    :cond_7a
    :try_start_65
    const-string v7, "\u041f\u043e\u043a\u0443\u043f\u0430\u0442\u044c \u0432\u0435\u0449\u0438 \u043d\u0430 \u0410\u043b\u0438"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 1266
    const/16 v7, 0xd6

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_0
    .catchall {:try_start_65 .. :try_end_65} :catchall_0

    .line 1267
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1276
    .end local v4    # "t3":J
    :cond_7b
    :try_start_66
    const-string v7, "\u203c\u2702"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 1278
    const/16 v7, 0x8a

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_0
    .catchall {:try_start_66 .. :try_end_66} :catchall_0

    .line 1279
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1288
    .end local v4    # "t3":J
    :cond_7c
    :try_start_67
    const-string v7, "\ud83c\udf1f\u041d\u041e\u0412\u0418\u041d\u041a\u0418"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 1290
    const/16 v7, 0x8c

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_0
    .catchall {:try_start_67 .. :try_end_67} :catchall_0

    .line 1291
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1299
    .end local v4    # "t3":J
    :cond_7d
    :try_start_68
    const-string v7, "winter-2016"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 1300
    const/16 v7, 0xa0

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_0
    .catchall {:try_start_68 .. :try_end_68} :catchall_0

    .line 1301
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1304
    .end local v4    # "t3":J
    :cond_7e
    :try_start_69
    const-string v7, "\u0425\u043e\u0447\u0435\u0448\u044c \u0438\u043c\u0435\u0442\u044c \u0441\u0442\u0430\u0431"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1305
    const/16 v7, 0xa1

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_0
    .catchall {:try_start_69 .. :try_end_69} :catchall_0

    .line 1306
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1314
    .end local v4    # "t3":J
    :cond_7f
    :try_start_6a
    const-string v7, "\u041cA\u041b"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 1315
    const/16 v7, 0xa3

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_0
    .catchall {:try_start_6a .. :try_end_6a} :catchall_0

    .line 1316
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1319
    .end local v4    # "t3":J
    :cond_80
    :try_start_6b
    const-string v7, "\u0418\u0442a\u03ba"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 1320
    const/16 v7, 0xa4

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_0
    .catchall {:try_start_6b .. :try_end_6b} :catchall_0

    .line 1321
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1324
    .end local v4    # "t3":J
    :cond_81
    :try_start_6c
    const-string v7, "\u041e\u0431\u0432\u0430\u043b \u0446\u0435\u043d \u043d\u0430 \u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 1325
    const/16 v7, 0xa5

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_0
    .catchall {:try_start_6c .. :try_end_6c} :catchall_0

    .line 1326
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1329
    .end local v4    # "t3":J
    :cond_82
    :try_start_6d
    const-string v7, "\u2714\u0418\u043d\u0442\u0435\u0440\u043d\u0435\u0442-\u043c\u0430\u0433\u0430\u0437\u0438\u043d \u043c"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 1330
    const/16 v7, 0xb1

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_0
    .catchall {:try_start_6d .. :try_end_6d} :catchall_0

    .line 1331
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1334
    .end local v4    # "t3":J
    :cond_83
    :try_start_6e
    const-string v7, "\u043c\u044b \u0441\u043e\u0437\u0434\u0430\u043b\u0438 Instagram: m"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 1335
    const/16 v7, 0xb2

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_0
    .catchall {:try_start_6e .. :try_end_6e} :catchall_0

    .line 1336
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1344
    .end local v4    # "t3":J
    :cond_84
    :try_start_6f
    const-string v7, "\u041f\u043e\u043d\u0440\u0430\u0432\u0438\u043b\u043e\u0441\u044c?\n\n\u041d\u0430\u0447\u043d\u0438"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 1345
    const/16 v7, 0xb6

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_0
    .catchall {:try_start_6f .. :try_end_6f} :catchall_0

    .line 1346
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1348
    .end local v4    # "t3":J
    :cond_85
    :try_start_70
    const-string v7, "\u041f\u043e\u043d\u0440\u0430\u0432\u0438\u043b\u043e\u0441\u044c? \n\n\u041d\u0430\u0447\u043d\u0438"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 1349
    const/16 v7, 0xb7

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_0
    .catchall {:try_start_70 .. :try_end_70} :catchall_0

    .line 1350
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1352
    .end local v4    # "t3":J
    :cond_86
    :try_start_71
    const-string v7, "\u041b\u043e\u043b! \u041c\u043e\u043b\u043e\u0434\u044b\u0435"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 1353
    const/16 v7, 0xb8

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_0
    .catchall {:try_start_71 .. :try_end_71} :catchall_0

    .line 1354
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1356
    .end local v4    # "t3":J
    :cond_87
    :try_start_72
    const-string v7, "\u0418\u0433\u0440\u0430 \u043f\u0435\u0440\u0435\u0432\u0435\u0440\u043d\u0443\u0432\u0448\u0430\u044f \u043f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_88

    .line 1357
    const/16 v7, 0xb9

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_0
    .catchall {:try_start_72 .. :try_end_72} :catchall_0

    .line 1358
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1360
    .end local v4    # "t3":J
    :cond_88
    :try_start_73
    const-string v7, "\u041d\u0430\u043a\u043e\u043d\u0435\u0446-\u0442\u043e \u0432\u044b\u0448\u043b\u0430 RPG,"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 1361
    const/16 v7, 0xba

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_0
    .catchall {:try_start_73 .. :try_end_73} :catchall_0

    .line 1362
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1364
    .end local v4    # "t3":J
    :cond_89
    :try_start_74
    const-string v7, "\u041f\u0440\u043e\u0440\u044b\u0432 \u0432 \u0438\u0433"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 1365
    const/16 v7, 0xc8

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_0
    .catchall {:try_start_74 .. :try_end_74} :catchall_0

    .line 1366
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1368
    .end local v4    # "t3":J
    :cond_8a
    :try_start_75
    const-string v7, "\u0411\u043e\u043c\u0431\u043e\u0432\u0430\u044f \u0438\u0433\u0440"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 1369
    const/16 v7, 0xc9

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_0
    .catchall {:try_start_75 .. :try_end_75} :catchall_0

    .line 1370
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1372
    .end local v4    # "t3":J
    :cond_8b
    :try_start_76
    const-string v7, "\ud83d\udca5\u0418\u0433\u0440\u0430 \u0434"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 1373
    const/16 v7, 0xcf

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_0
    .catchall {:try_start_76 .. :try_end_76} :catchall_0

    .line 1374
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1376
    .end local v4    # "t3":J
    :cond_8c
    :try_start_77
    const-string v7, "\u041f\u043e\u043d\u0440\u0430\u0432\u0438\u043b\u043e\u0441\u044c? 18"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 1377
    const/16 v7, 0xd0

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_0
    .catchall {:try_start_77 .. :try_end_77} :catchall_0

    .line 1378
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1381
    .end local v4    # "t3":J
    :cond_8d
    :try_start_78
    const-string v7, "\u041d\u0430 \u0434\u043d\u044f\u0445, \u0438\u0437\u0432\u0435\u0441\u0442\u043d\u044b\u0439"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 1382
    const/16 v7, 0xbc

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_0
    .catchall {:try_start_78 .. :try_end_78} :catchall_0

    .line 1383
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1386
    .end local v4    # "t3":J
    :cond_8e
    :try_start_79
    const-string v7, "\u231a \u0414\u043e\u043b\u0433\u043e\u0436\u0434\u0430\u043d\u043d\u0430\u044f \u0440"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 1387
    const/16 v7, 0xbd

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_0
    .catchall {:try_start_79 .. :try_end_79} :catchall_0

    .line 1388
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1396
    .end local v4    # "t3":J
    :cond_8f
    :try_start_7a
    const-string v7, "\u0412\u044b \u2013 \u043e\u0434\u043d\u0430 \u0438\u0437 \u0442\u0435\u0445 \u0436\u0435\u043d\u0449\u0438\u043d,"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 1397
    const/16 v7, 0xbf

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_0
    .catchall {:try_start_7a .. :try_end_7a} :catchall_0

    .line 1398
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1401
    .end local v4    # "t3":J
    :cond_90
    :try_start_7b
    const-string v7, "\u0420\u0435\u0448\u0430\u0439\u0442\u0435 \u0441\u0430\u043c\u0438, \u043f\u043e\u0434\u043f\u0438"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 1402
    const/16 v7, 0xc0

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_0
    .catchall {:try_start_7b .. :try_end_7b} :catchall_0

    .line 1403
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1406
    .end local v4    # "t3":J
    :cond_91
    :try_start_7c
    const-string v7, "\u041d\u041e\u0412\u0418\u041d\u041a\u0410\ud83d\udd25"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 1407
    const/16 v7, 0xc1

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_0
    .catchall {:try_start_7c .. :try_end_7c} :catchall_0

    .line 1408
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1411
    .end local v4    # "t3":J
    :cond_92
    :try_start_7d
    const-string v7, "\u0418\u0432\u0430\u043d\u0433\u0430\u0439 \u0431\u0440\u043e\u0441\u0438\u043b"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 1412
    const/16 v7, 0xc2

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_0
    .catchall {:try_start_7d .. :try_end_7d} :catchall_0

    .line 1413
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1416
    .end local v4    # "t3":J
    :cond_93
    :try_start_7e
    const-string v7, "[club73260851"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_94

    .line 1417
    const/16 v7, 0xca

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_0
    .catchall {:try_start_7e .. :try_end_7e} :catchall_0

    .line 1418
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1421
    .end local v4    # "t3":J
    :cond_94
    :try_start_7f
    const-string v7, "\u041e\u043f\u0442\u0438\u043c\u0443\u0441 \u043f\u0440\u043e\u0442\u0438\u0432 \u0411"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 1422
    const/16 v7, 0xcb

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_0
    .catchall {:try_start_7f .. :try_end_7f} :catchall_0

    .line 1423
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1426
    .end local v4    # "t3":J
    :cond_95
    :try_start_80
    const-string v7, "#\u043f\u043e\u0438\u0433\u0440\u0430\u0442\u044c_ \u0433\u043e\u0442\u043e\u0432"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 1427
    const/16 v7, 0xd1

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_0
    .catchall {:try_start_80 .. :try_end_80} :catchall_0

    .line 1428
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1431
    .end local v4    # "t3":J
    :cond_96
    :try_start_81
    const-string v7, "\ud83c\udccf\ud83c\udfaf \u0415\u0441\u043b\u0438"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 1432
    const/16 v7, 0xd2

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_0
    .catchall {:try_start_81 .. :try_end_81} :catchall_0

    .line 1433
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1436
    .end local v4    # "t3":J
    :cond_97
    :try_start_82
    const-string v7, "\u041a\u0440\u0430\u0441\u0438\u0432\u044b\u0435 \u0438 \u043e\u0434"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1437
    const/16 v7, 0xd3

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_0
    .catchall {:try_start_82 .. :try_end_82} :catchall_0

    .line 1438
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1441
    .end local v4    # "t3":J
    :cond_98
    :try_start_83
    const-string v7, "\u041f\u0440\u0435\u0441\u0441-\u0441\u0435\u043a\u0440\u0435\u0442\u0430\u0440\u044c \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 \u0413\u0435\u0440"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 1442
    const/16 v7, 0xd7

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_0
    .catchall {:try_start_83 .. :try_end_83} :catchall_0

    .line 1443
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1445
    .end local v4    # "t3":J
    :cond_99
    :try_start_84
    const-string v7, "\u041f\u0440\u0435\u0441-\u0441\u0435\u043a\u0440\u0435\u0442\u0430\u0440 \u0412\u041a\u043e\u043d\u0442\u0430\u043a\u0442\u0435 \u0413\u0435\u0440"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 1446
    const/16 v7, 0xd8

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_0
    .catchall {:try_start_84 .. :try_end_84} :catchall_0

    .line 1447
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1450
    .end local v4    # "t3":J
    :cond_9a
    :try_start_85
    const-string v7, "\u041f\u0440\u0438\u0432\u0435\u0442!\n\u041f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430, \u0437\u0430\u0439\u0434\u0438 \u0432 \u0438\u0433\u0440\u0443 "

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 1452
    const/16 v7, 0xd9

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_0
    .catchall {:try_start_85 .. :try_end_85} :catchall_0

    .line 1453
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1455
    .end local v4    # "t3":J
    :cond_9b
    :try_start_86
    const-string v7, "\u0414\u0440\u0443\u0437\u044c\u044f \u043e\u0442\u0432\u0435\u0442\u0438\u043b\u0438, \u0447"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 1456
    const/16 v7, 0xdf

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_0
    .catchall {:try_start_86 .. :try_end_86} :catchall_0

    .line 1457
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1460
    .end local v4    # "t3":J
    :cond_9c
    :try_start_87
    const-string v7, "\u0425\u0432\u0430\u0442\u0438\u0442 \u0441\u0438\u0434\u0435\u0442\u044c \u0432 \u0412\u041a!"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 1461
    const/16 v7, 0xda

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_0
    .catchall {:try_start_87 .. :try_end_87} :catchall_0

    .line 1462
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1465
    .end local v4    # "t3":J
    :cond_9d
    :try_start_88
    const-string v7, "\u0412\u0441\u0435\u043c \u043f\u0440\u0438\u0432\u0435\u0442, \u043c\u0435\u043d\u044f \u0437\u043e\u0432\u0443\u0442 \u041d\u0430\u0441\u0442\u044f \u0413"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 1466
    const/16 v7, 0xe0

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_0
    .catchall {:try_start_88 .. :try_end_88} :catchall_0

    .line 1467
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1470
    .end local v4    # "t3":J
    :cond_9e
    :try_start_89
    const-string v7, "[club137882039"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 1471
    const/16 v7, 0xe1

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_0
    .catchall {:try_start_89 .. :try_end_89} :catchall_0

    .line 1472
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1475
    .end local v4    # "t3":J
    :cond_9f
    :try_start_8a
    const-string v7, "\u0421\u0430\u043c\u044b\u0435 \u0422\u041e\u041f \u043f\u0430\u0431\u044b"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 1476
    const/16 v7, 0xe2

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_0
    .catchall {:try_start_8a .. :try_end_8a} :catchall_0

    .line 1477
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1480
    .end local v4    # "t3":J
    :cond_a0
    :try_start_8b
    const-string v7, "\u0441\u0432\u044f\u0436\u0435\u0442\u0441\u044f \u043f\u043e \u0440\u0435\u043f\u043e\u0441\u0442\u0443"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 1481
    const/16 v7, 0xe3

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_0
    .catchall {:try_start_8b .. :try_end_8b} :catchall_0

    .line 1482
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1485
    .end local v4    # "t3":J
    :cond_a1
    :try_start_8c
    const-string v7, "\u042d\u0442\u043e \u0431\u043b\u043e\u0433 \u043f\u0440\u0435\u0434\u043f\u0440\u0438\u043d"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 1486
    const/16 v7, 0xe6

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_0
    .catchall {:try_start_8c .. :try_end_8c} :catchall_0

    .line 1487
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1490
    .end local v4    # "t3":J
    :cond_a2
    :try_start_8d
    const-string v7, "\u0423 \u0442\u0435\u0431\u044f \u0435\u0441\u0442\u044c \u043d\u043e\u0432\u044b\u0435 "

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 1491
    const/16 v7, 0xe7

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_0
    .catchall {:try_start_8d .. :try_end_8d} :catchall_0

    .line 1492
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1495
    .end local v4    # "t3":J
    :cond_a3
    :try_start_8e
    const-string v7, "[club121585285|"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 1496
    const/16 v7, 0xe8

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_8e} :catch_0
    .catchall {:try_start_8e .. :try_end_8e} :catchall_0

    .line 1497
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1500
    .end local v4    # "t3":J
    :cond_a4
    :try_start_8f
    const-string v7, "\u041d\u0435 \u0440\u0438\u0441\u043a\u0443\u0439, \u0436\u043c\u0438 "

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 1501
    const/16 v7, 0xe9

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_8f} :catch_0
    .catchall {:try_start_8f .. :try_end_8f} :catchall_0

    .line 1502
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1504
    .end local v4    # "t3":J
    :cond_a5
    :try_start_90
    const-string v7, "\u0423 \u0442\u0435\u0431\u044f \u0431\u0443\u0434\u0435\u0442 \u0442\u0430\u043a \u0436\u0435, \u0435\u0441\u043b\u0438"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 1505
    const/16 v7, 0xea

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_0
    .catchall {:try_start_90 .. :try_end_90} :catchall_0

    .line 1506
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1509
    .end local v4    # "t3":J
    :cond_a6
    :try_start_91
    const-string v7, "\ud83d\udcaa \u0422\u0440\u0435\u043d\u0430\u0436\u0435\u0440 \u043c\u0438\u043e"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 1510
    const/16 v7, 0xeb

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_91} :catch_0
    .catchall {:try_start_91 .. :try_end_91} :catchall_0

    .line 1511
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1513
    .end local v4    # "t3":J
    :cond_a7
    :try_start_92
    const-string v7, "\u041f\u043e\u044f\u0441 \ud83d\ude1c \u0434"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 1514
    const/16 v7, 0xec

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_92} :catch_0
    .catchall {:try_start_92 .. :try_end_92} :catchall_0

    .line 1515
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1518
    .end local v4    # "t3":J
    :cond_a8
    :try_start_93
    const-string v7, "\u0414\u0440\u0443\u0437\u044c\u044f \u043d\u0435 \u043f\u0435\u0440\u0435\u0445\u043e\u0434\u0438\u0442\u0435 \u0441"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 1519
    const/16 v7, 0xed

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_93} :catch_0
    .catchall {:try_start_93 .. :try_end_93} :catchall_0

    .line 1520
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1523
    .end local v4    # "t3":J
    :cond_a9
    :try_start_94
    const-string v7, "\u0414\u043e\u0431\u0440\u043e \u043f\u043e\u0436\u0430\u043b\u043e\u0432\u0430\u0442\u044c! \u0427\u0442\u043e\u0431\u044b \u043d\u0430\u0447\u0430\u0442\u044c \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c\u0441\u044f"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 1524
    const/16 v7, 0xee

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_94} :catch_0
    .catchall {:try_start_94 .. :try_end_94} :catchall_0

    .line 1525
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1528
    .end local v4    # "t3":J
    :cond_aa
    :try_start_95
    const-string v7, "\u041fp\u0438\u0432"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 1529
    const/16 v7, 0xef

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_95} :catch_0
    .catchall {:try_start_95 .. :try_end_95} :catchall_0

    .line 1530
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1533
    .end local v4    # "t3":J
    :cond_ab
    :try_start_96
    const-string v7, "- \u0410 \u0442\u044b \u0443\u0436\u0435 \u0441\u043b\u0443\u0448\u0430\u0435\u0448\u044c "

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 1534
    const/16 v7, 0xf0

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_96} :catch_0
    .catchall {:try_start_96 .. :try_end_96} :catchall_0

    .line 1535
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1538
    .end local v4    # "t3":J
    :cond_ac
    :try_start_97
    const-string v7, "\u0412\u0441\u0451 \u043c\u0435\u043d\u044f\u0435\u0442\u0441\u044f. \u041a \u043b\u0443\u0447\u0448\u0435\u043c\u0443!"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 1539
    const/16 v7, 0xf1

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_97} :catch_0
    .catchall {:try_start_97 .. :try_end_97} :catchall_0

    .line 1540
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1543
    .end local v4    # "t3":J
    :cond_ad
    :try_start_98
    const-string v7, "\u0422\u0438\u0442\u0430\u043d\u043e\u0432\u044b\u0439 \u043a\u0440\u0435\u0441\u0442 \u0422\u043e\u0440"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 1544
    const/16 v7, 0xf2

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_98} :catch_0
    .catchall {:try_start_98 .. :try_end_98} :catchall_0

    .line 1545
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1548
    .end local v4    # "t3":J
    :cond_ae
    :try_start_99
    const-string v7, "\u0418\u0434\u0435\u0442 \u043d\u0430\u0431\u043e\u0440 \u043d\u0430 \u0437\u0430\u043e\u0447\u043a\u0443!"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 1549
    const/16 v7, 0xf3

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_99} :catch_0
    .catchall {:try_start_99 .. :try_end_99} :catchall_0

    .line 1550
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1553
    .end local v4    # "t3":J
    :cond_af
    :try_start_9a
    const-string v7, "\ud83d\udca5 \u0411p"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 1554
    const/16 v7, 0xf4

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9a} :catch_0
    .catchall {:try_start_9a .. :try_end_9a} :catchall_0

    .line 1555
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1558
    .end local v4    # "t3":J
    :cond_b0
    :try_start_9b
    const-string v7, "\u0414\u0432\u0435 \u043d\u0435\u0434\u0435\u043b\u0438 \u043d\u0430\u0437\u0430\u0434 \u0437\u0430\u043a\u0430\u0437\u044b\u0432\u0430\u043b i"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 1559
    const/16 v7, 0xf5

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9b} :catch_0
    .catchall {:try_start_9b .. :try_end_9b} :catchall_0

    .line 1560
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1564
    .end local v4    # "t3":J
    :cond_b1
    :try_start_9c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x24e

    if-ge v7, v8, :cond_b2

    .line 1565
    sget-object v7, Lcom/perm/utils/SpamHelper;->readMorePattern:Ljava/util/regex/Pattern;

    invoke-static {p0, v7}, Lcom/perm/utils/SpamHelper;->match(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v7

    if-eqz v7, :cond_b2

    .line 1567
    const/16 v7, 0x8d

    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9c} :catch_0
    .catchall {:try_start_9c .. :try_end_9c} :catchall_0

    .line 1568
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1572
    .end local v4    # "t3":J
    :cond_b2
    :try_start_9d
    sget-object v7, Lcom/perm/utils/SpamHelper;->keywords:[Ljava/lang/String;

    if-nez v7, :cond_b3

    .line 1573
    sget-object v7, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "new_spam_words"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1575
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b4

    .line 1576
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/perm/utils/SpamHelper;->keywords:[Ljava/lang/String;

    .line 1583
    .end local v0    # "s":Ljava/lang/String;
    :cond_b3
    :goto_1
    sget-object v8, Lcom/perm/utils/SpamHelper;->keywords:[Ljava/lang/String;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_b6

    aget-object v6, v8, v7

    .line 1584
    .local v6, "word":Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9d} :catch_0
    .catchall {:try_start_9d .. :try_end_9d} :catchall_0

    move-result v10

    if-eqz v10, :cond_b5

    .line 1585
    const/4 v7, 0x1

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1578
    .end local v4    # "t3":J
    .end local v6    # "word":Ljava/lang/String;
    .restart local v0    # "s":Ljava/lang/String;
    :cond_b4
    const/4 v7, 0x0

    :try_start_9e
    new-array v7, v7, [Ljava/lang/String;

    sput-object v7, Lcom/perm/utils/SpamHelper;->keywords:[Ljava/lang/String;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_9e} :catch_0
    .catchall {:try_start_9e .. :try_end_9e} :catchall_0

    goto :goto_1

    .line 1588
    .end local v0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1589
    .local v1, "th":Ljava/lang/Throwable;
    :try_start_9f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1590
    invoke-static {v1, p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_0

    .line 1591
    const/4 v7, 0x0

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1583
    .end local v1    # "th":Ljava/lang/Throwable;
    .end local v4    # "t3":J
    .restart local v6    # "word":Ljava/lang/String;
    :cond_b5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1587
    .end local v6    # "word":Ljava/lang/String;
    :cond_b6
    const/4 v7, 0x0

    .line 1593
    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_1

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1593
    .end local v4    # "t3":J
    :catchall_0
    move-exception v7

    sget-boolean v8, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v8, :cond_b7

    .line 1594
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1595
    .restart local v4    # "t3":J
    sget v8, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v8, v8

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v8, v8

    sput v8, Lcom/perm/utils/SpamHelper;->sum:I

    .line 1596
    sget v8, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/perm/utils/SpamHelper;->count:I

    .line 1597
    const-string v8, "Kate.SpamHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "avg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    sget v11, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks, dur = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v4, v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mks"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    .end local v4    # "t3":J
    :cond_b7
    throw v7
.end method

.method public static match(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "p"    # Ljava/util/regex/Pattern;

    .prologue
    .line 1621
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method static reportMatch(I)V
    .locals 6
    .param p0, "rule_id"    # I

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 20
    .local v0, "time":J
    const-wide/16 v2, 0x2710

    rem-long v2, v0, v2

    const-wide/16 v4, 0x270b

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "spam match"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static resetWordsCache()V
    .locals 1

    .prologue
    .line 1639
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/utils/SpamHelper;->keywords:[Ljava/lang/String;

    .line 1640
    return-void
.end method

.method public static setHideSpamEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 1635
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/SpamHelper;->hide_spam:Ljava/lang/Boolean;

    .line 1636
    return-void
.end method
