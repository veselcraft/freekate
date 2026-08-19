.class public abstract Lcom/perm/utils/SpamHelper;
.super Ljava/lang/Object;
.source "SpamHelper.java"


# static fields
.field static PREF_FILE_NAME:Ljava/lang/String;

.field static PREF_NAME:Ljava/lang/String;

.field private static count:I

.field private static hide_spam:Ljava/lang/Boolean;

.field private static keywords:[Ljava/lang/String;

.field static readMorePattern:Ljava/util/regex/Pattern;

.field static serverIds:Ljava/util/ArrayList;

.field static serverStrings:Ljava/util/ArrayList;

.field private static sum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\\[\\w*\\|[^\\]\\[]*(?:\u043f[\u0440p]\u043e\u0434[\u043eo]\u043b\u0436\u0435\u043d\u0438[\u0435e]|[\u043f\u03c0][\u043eo]\u043b\u043d[\u043eo][\u0441c]\u0442\u044c\u044e|\u041f\u041e\u0414\u041f\u0418\u0428\u0418|\u041f[\u043eo]\u0434\u043f\u0438\u0441|\u0432 \u0438[\u0441c]\u0442\u043e\u0447\u043d\u0438\u043a\u0435|(\u0423\u0437\u043d\u0430\u0442\u044c|\u0421\u043c\u043e\u0442\u0440\u0435\u0442\u044c) (\u043e\u0442\u0432\u0435\u0442|(\u0432\u0441\u0435 )?\u0424\u041e\u0422\u041e)).*\\]"

    const/16 v1, 0x22

    .line 3185
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/SpamHelper;->readMorePattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 3193
    sput-object v0, Lcom/perm/utils/SpamHelper;->hide_spam:Ljava/lang/Boolean;

    const-string v0, "s"

    .line 3209
    sput-object v0, Lcom/perm/utils/SpamHelper;->PREF_FILE_NAME:Ljava/lang/String;

    .line 3210
    sput-object v0, Lcom/perm/utils/SpamHelper;->PREF_NAME:Ljava/lang/String;

    return-void
.end method

.method private static checkRules(Ljava/lang/String;)I
    .locals 14

    const-string v0, " mks"

    const-string v1, " mks, dur = "

    const-string v2, "avg = "

    const-string v3, "Kate.SpamHelper"

    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v6, -0x1

    if-eqz p0, :cond_c0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v7, "\u0425\u043e\u0447\u0435\u0448\u044c \u0442\u0430\u043a\u0438\u0435-\u0436\u0435? \u0416"

    .line 151
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 p0, 0x26c

    return p0

    :cond_1
    const-string v7, "\u0412\u043e\u0442 \u0442\u0430\u043a\u043e\u0439 \u0440\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442 \u0431\u0443\u0434\u0435\u0442 \u0443"

    .line 177
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 p0, 0x279

    return p0

    :cond_2
    const-string v7, "zaemibot"

    .line 199
    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 p0, 0x284

    return p0

    :cond_3
    const-string v7, "\u0423\u0441\u0442\u0430\u043b\u0430 \u043e\u0442 \u043e\u0434\u0438\u043d\u043e\u0447\u0435\u0441\u0442\u0432\u0430?"

    .line 215
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 p0, 0x28c

    return p0

    :cond_4
    const-string v7, "\ud83d\ude1c\u0420\u0438\u0441\u0443\u0435\u0448\u044c \u0438"

    .line 247
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 p0, 0x29f

    return p0

    :cond_5
    const-string v7, "\ud83d\udcb0 \u0410\u0412\u0422\u041e\u0417\u0410\u0419"

    .line 257
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 p0, 0x2a6

    return p0

    :cond_6
    const-string v7, "pulyavstakane"

    .line 269
    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 p0, 0x2ac

    return p0

    :cond_7
    const-string v7, "\u041f\u0440\u043e\u0442\u0435\u0441\u0442\u0438\u0440\u0443\u0439\u0442\u0435 \u0431\u0435\u0441\u043f\u043b\u0430\u0442\u043d\u043e \u0441"

    .line 297
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 p0, 0x2ba

    return p0

    :cond_8
    const-string v7, "\u0421\u0440\u043e\u0447\u043d\u043e \u043d\u0443\u0436\u043d\u044b \u0434\u0435\u043d\u044c\u0433\u0438?"

    .line 305
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 p0, 0x2be

    return p0

    :cond_9
    const-string v7, "/viktoria_woman"

    .line 313
    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 p0, 0x2c2

    return p0

    :cond_a
    const-string v7, "\u041a\u0430\u043a \u043d\u0430\u0441\u0447\u0435\u0442 \u0448\u0438\u043a\u0430\u0440\u043d\u043e\u0433\u043e \u043f"

    .line 333
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 p0, 0x2cc

    return p0

    :cond_b
    const-string v7, "\u041c\u043e\u043c\u0435\u043d\u0442\u0430\u043b\u044c\u043d\u044b\u0435 \u0437\u0430\u0439"

    .line 335
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 p0, 0x2cd

    return p0

    :cond_c
    const-string v7, "\u0414\u043b\u044f \u0442\u0435\u0445, \u043a\u043e\u043c\u0443 \u043d\u0435 \u0441 \u043a\u0435\u043c \u0440"

    .line 349
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 p0, 0x2d4

    return p0

    :cond_d
    const-string v7, "\u0423\u0431\u0435\u0434\u0438\u0441\u044c \u0441\u0430\u043c \u043d\u0430\u043f\u0438\u0448"

    .line 357
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 p0, 0x2d8

    return p0

    :cond_e
    const-string v7, "\u0410 \u0432\u044b \u0437\u043d\u0430\u043b\u0438, \u0447\u0442\u043e \u0443 \u043d\u0430\u0441 \u0432 \u0433"

    .line 371
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/16 p0, 0x2df

    return p0

    :cond_f
    const-string v7, "\ud83c\uddf7\ud83c\uddfa \u041f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0441\u0442\u0432\u043e \u0420\u043e\u0441\u0441\u0438\u044f, \u043d"

    .line 387
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 p0, 0x2e7

    return p0

    :cond_10
    const-string v7, "\u0421 \u043a\u0440\u0435\u0434\u0438\u0442\u043d\u043e\u0439 \u043a\u0430\u0440\u0442\u043e\u0439 T"

    .line 413
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/16 p0, 0x2f4

    return p0

    :cond_11
    const-string v7, "\u0421\u0430\u043c\u0430\u044f \u0440\u0438\u043a\u0430\u043d\u0443\u0442"

    .line 431
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 p0, 0x2fd

    return p0

    :cond_12
    const-string v7, "ruszaem"

    .line 433
    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 p0, 0x2fe

    return p0

    :cond_13
    const-string v7, "\u041c\u0443\u0436\u0438\u043a\u0438, \u043a\u0442\u043e \u0438\u0441\u043a\u0430\u043b \u044d\u0442\u043e\u0442"

    .line 445
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/16 p0, 0x304

    return p0

    :cond_14
    const-string v7, "\u041f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 \u0441\u0430\u043c\u0438: "

    .line 447
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/16 p0, 0x305

    return p0

    :cond_15
    const-string v7, "\u26a0 \"\u0410\u041d\u0422\u0418\u041a\u0420\u0418\u0417"

    .line 451
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/16 p0, 0x307

    return p0

    :cond_16
    const-string v7, "\u041f\u043e\u044f\u0432\u0438\u043b\u0441\u044f \u0441\u0430\u0439\u0442, \u0433\u0434\u0435 \u043f\u043b"

    .line 453
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/16 p0, 0x308

    return p0

    :cond_17
    const-string v7, "\u041e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d \u0441\u043f\u043e\u0441\u043e\u0431 \u0431\u044b\u0441\u0442\u0440\u043e \u043f\u0440"

    .line 465
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/16 p0, 0x30e

    return p0

    :cond_18
    const-string v7, "/zaimo_robot"

    .line 467
    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/16 p0, 0x30f

    return p0

    :cond_19
    const-string v7, "\u0412\u044b \u0447\u0430\u0441\u0442\u043e \u0437\u0430\u043c\u0435\u0447\u0430\u0435\u0442\u0435, \u043a"

    .line 473
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/16 p0, 0x312

    return p0

    :cond_1a
    const-string v7, "\u0423\u0440\u0430!!!!!! \u042f"

    .line 501
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/16 p0, 0x320

    return p0

    :cond_1b
    const-string v7, "\u0418\u0449\u0435\u0442\u0435 \u0440\u0430\u0431\u043e\u0442\u0443 \u0432 \u043e\u0444"

    .line 529
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const/16 p0, 0x32e

    return p0

    :cond_1c
    const-string v7, "\u0423\u0441\u0442a\u043b\u0438 \u043f\u043b\u0430\u0442\u0438\u0442\u044c \u0448\u0442\u0440"

    .line 531
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/16 p0, 0x32f

    return p0

    :cond_1d
    const-string v7, "\u041e\u0434\u0438\u043d \u0438\u0437 \u043b\u0443\u0447\u0448\u0438\u0445 \u043f\u043e\u0434\u0430\u0440\u043a\u043e\u0432"

    .line 555
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/16 p0, 0x33b

    return p0

    :cond_1e
    const-string v7, "\u263a\u0421\u043a\u043e\u043b\u044c\u043a\u043e \u0441\u0442\u043e"

    .line 569
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/16 p0, 0x342

    return p0

    :cond_1f
    const-string v7, "\u0412\u0441\u0435\u043c \u043f\u0440\u0438\u0432\u0435\u0442! \u0412\u0437\u044f\u043b\u0438"

    .line 579
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/16 p0, 0x347

    return p0

    :cond_20
    const-string v7, "\u041d\u0430\u043f\u0438\u0448\u0438 \u0411\u043e\u0442\u0443"

    .line 595
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    const/16 p0, 0x34f

    return p0

    :cond_21
    const-string v7, "\ud83d\udcb0 \u0417\u0410\u0419\u041c\u042b"

    .line 603
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    const/16 p0, 0x353

    return p0

    :cond_22
    const-string v7, "\u041aa\u043a \u0437a 5 \u041c\u0418H \u043fo\u043b"

    .line 611
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    const/16 p0, 0x357

    return p0

    :cond_23
    const-string v7, "\u0421\u043d\u044f\u043b\u0430 50 000 \u0440\u0443\u0431"

    .line 613
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    const/16 p0, 0x358

    return p0

    :cond_24
    const-string v7, "\u0418\u0449\u0435\u0442\u0435 \u043f\u043e\u0434\u0430\u0440\u043e\u043a \u043d\u0430 \u043f"

    .line 619
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/16 p0, 0x35b

    return p0

    :cond_25
    const-string v7, "\u0425\u041e\u0422\u0418\u0422\u0415 \u0423\u0411\u0420\u0410\u0422\u042c \u043b"

    .line 641
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    const/16 p0, 0x366

    return p0

    :cond_26
    const-string v7, "\u0417\u0430\u043a\u0443\u043f\u0430\u0435\u0442\u0435\u0441\u044c \u0432 \u0441\u0435\u0442\u0438 \u043c"

    .line 647
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/16 p0, 0x369

    return p0

    :cond_27
    const-string v7, "\u0414\u0435\u0442\u0441\u043a\u0438\u0435 \u043f\u043e\u0440\u0442\u0440\u0435\u0442\u044b\ud83d\ude0d"

    .line 653
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    const/16 p0, 0x36c

    return p0

    :cond_28
    const-string v7, "\u0412\u044b\u0434\u0430\u0435\u043c \u0437\u0430\u0439\u043c\u044b"

    .line 657
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    const/16 p0, 0x36e

    return p0

    :cond_29
    const-string v7, "\u2705 \u041f\u0440\u043e\u0439\u0434\u0438 \u0442\u0435\u0441\u0442 \u0437"

    .line 663
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const/16 p0, 0x371

    return p0

    :cond_2a
    const-string v7, "\u041a\u0430\u043a \u043d\u0430 \u0441\u0447\u0435\u0442 \u0448"

    .line 665
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const/16 p0, 0x372

    return p0

    :cond_2b
    const-string v7, "\ud83d\udd25!!\u041d\u0410\u0428\u0415 \u0414\u0415\u041b\u041e"

    .line 677
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    const/16 p0, 0x378

    return p0

    :cond_2c
    const-string v7, "\u0412\u0441\u0435\u043c \u043f\u0440\u0438\u0432\u0435\u0442! \u041e\u0441\u0442\u0430\u043b\u0441\u044f \u0431\u0435\u0437 \u0440\u0430\u0431"

    .line 681
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 p0, 0x37a

    return p0

    :cond_2d
    const-string v7, "\u041a\u043e\u0433\u0434\u0430 \u0432 \u043e\u0447\u0435\u0440\u0435\u0434\u043d\u043e\u0439 \u0440\u0430\u0437 \u0432"

    .line 683
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    const/16 p0, 0x37b

    return p0

    :cond_2e
    const-string v7, "\u041f\u0440\u043e\u0439\u0434\u0438 \u0442\u0435\u0441\u0442 \u0437\u0430 1 \u043c\u0438\u043d"

    .line 685
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    const/16 p0, 0x37c

    return p0

    :cond_2f
    const-string v7, "\u2705 \u041f\u0440\u043e\u0439\u0434\u0438 1 \u043c\u0438\u043d"

    .line 695
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    const/16 p0, 0x381

    return p0

    :cond_30
    const-string v7, "\ud83c\uddf7\ud83c\uddfa \u0413\u041b\u042f\u0414\u0418 \u041a\u0410\u041a\u041e\u0419 \u041a\u0420"

    .line 697
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    const/16 p0, 0x382

    return p0

    :cond_31
    const-string v7, "\u0421\u0442\u043e\u0439. \u270b"

    .line 701
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    const/16 p0, 0x384

    return p0

    :cond_32
    const-string v7, "\u0414\u0420\u0423\u0417\u042c\u042f, \u041c\u042b \u0417\u041d\u0410\u0415\u041c \u0427\u0422\u041e \u0421"

    .line 705
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    const/16 p0, 0x386

    return p0

    :cond_33
    const-string v7, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0430\u0435\u043c \u0441\u0435\u0440\u0438\u044e \u0434\u0435\u0442\u0441\u043a\u0438\u0445 \u043f"

    .line 709
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    const/16 p0, 0x388

    return p0

    :cond_34
    const-string v7, "\u0424\u0443\u043b\u043b \u0432 \u0438\u0441\u0442\u043e\u0447\u043d\u0438"

    .line 729
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    const/16 p0, 0x393

    return p0

    :cond_35
    const-string v7, "/zaimybot"

    .line 735
    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    const/16 p0, 0x396

    return p0

    :cond_36
    const-string v7, "\u0412\u0441\u0435\u043c \u043f\u0440\u0438\u0432\u0435\u0442! \u041d\u0430\u043f\u0438\u0441\u0430\u043b\u0430 \u0417\u0430\u0439\u043c"

    .line 743
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    const/16 p0, 0x39a

    return p0

    :cond_37
    const-string v7, "\u0412 \u0422\u0438\u043d\u044c\u043a\u043e\u0444\u0444 \u0434\u0435\u0441\u044f\u0442"

    .line 745
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    const/16 p0, 0x39b

    return p0

    :cond_38
    const-string v7, "\u0414\u0435\u0431\u0435\u0442\u043e\u0432\u0430\u044f \u043a\u0430\u0440\u0442\u0430 \u0434\u043b\u044f \u0434"

    .line 751
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    const/16 p0, 0x39e

    return p0

    :cond_39
    const-string v7, "\u041f\u0440\u043e\u0441\u0442\u043e \u041a\u0410\u0421\u041a\u041e \u0441 \u0443\u0434"

    .line 753
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    const/16 p0, 0x39f

    return p0

    :cond_3a
    const-string v7, "\u2705 \u041fpo\u0439\u0434\u0438 1 \u043c"

    .line 763
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    const/16 p0, 0x3a4

    return p0

    :cond_3b
    const-string v7, "\u0414\u0435\u0431\u0435\u0442\u043e\u0432\u0430\u044f \u043a\u0430\u0440\u0442\u0430, \u043a\u043e\u0442"

    .line 769
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/16 p0, 0x3a7

    return p0

    :cond_3c
    const-string v7, "\u0417\u0434\u0440\u0430\u0432\u0441\u0442\u0432\u0443\u0439\u0442\u0435! \u0412\u0437\u044f\u043b\u0430 28"

    .line 781
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    const/16 p0, 0x3ad

    return p0

    :cond_3d
    const-string v7, "\ud83c\udf81 \u041e\u0434\u0438\u043d \u0438\u0437 \u043b\u0443\u0447\u0448\u0438\u0445 \u043f\u043e\u0434"

    .line 783
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    const/16 p0, 0x3ae

    return p0

    :cond_3e
    const-string v7, "\u0412\u0441\u0435\u043c \u043f\u0440\u0438\u0432\u0435\u0442! \u0412\u0437\u044f\u043b\u0430 25"

    .line 791
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    const/16 p0, 0x3b2

    return p0

    :cond_3f
    const-string v7, "\u0421\u043e\u0441\u0442\u0430\u0432\u0438\u043b\u0438 \u0432\u0430\u043c \u043f\u043b\u0430\u043d \u0411"

    .line 797
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_40

    const/16 p0, 0x3b5

    return p0

    :cond_40
    const-string v7, "\u0420\u043e\u0441\u0441\u0438\u0439\u0441\u043a\u0430\u044f \u0445\u0443\u0434\u043e\u0436\u043d\u0438\u0446\u0430 \u043f\u0440\u0435\u0432\u0440"

    .line 803
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    const/16 p0, 0x3b8

    return p0

    :cond_41
    const-string v7, "\ud83d\udce9 \u041d\u0430\u043f\u0438\u0448\u0438 \u0411\u043e\u0442"

    .line 811
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    const/16 p0, 0x3bc

    return p0

    :cond_42
    const-string v7, "\u0422\u0420\u0415\u0411\u0423\u0415\u0422\u0421\u042f \u0412\u0418\u0414\u0415\u041e\u041c\u041e\u041d\u0422\u0410\u0416\u0415\u0420. \u0411"

    .line 823
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_43

    const/16 p0, 0x3c2

    return p0

    :cond_43
    const-string v7, "\u0414\u0430\u0440\u0438\u043c iPhone 12"

    .line 827
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    const/16 p0, 0x3c4

    return p0

    :cond_44
    const-string v7, "\u0414\u0435\u0431\u0435\u0442\u043e\u0432\u0430\u044f \u043a\u0430\u0440\u0442\u0430 \u0422\u0438\u043d\u044c\u043a"

    .line 835
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    const/16 p0, 0x3c8

    return p0

    :cond_45
    const-string v7, "\u041f\u043e\u0442\u0440\u044f\u0441\u0430\u044e\u0449\u0438\u0439 \u043f\u043e\u0440\u0442\u0440\u0435\u0442 \u0432 \u043c\u0443\u043b\u044c"

    .line 839
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    const/16 p0, 0x3ca

    return p0

    :cond_46
    const-string v7, "\ud83d\ude0e\u041a\u0440\u0443\u0442\u0430\u044f \u043a\u0430\u0440\u0442\u0430 \u0441"

    .line 849
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    const/16 p0, 0x3cf

    return p0

    :cond_47
    const-string v7, "\u0427\u0442\u043e \u044d\u0442\u043e? \u0410 \u044d\u0442\u043e \u043a\u0430\u0440\u0442"

    .line 853
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    const/16 p0, 0x3d1

    return p0

    :cond_48
    const-string v7, "\u041f\u043e\u0441\u043c\u043e\u0442\u0440\u0438\u0442\u0435, \u043a\u0430\u043a \u0443\u0448\u0451\u043b \u0432\u044b\u043f\u0438\u0440"

    .line 855
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    const/16 p0, 0x3d2

    return p0

    :cond_49
    const-string v7, "\ud83d\udcb8\u041d\u0430\u043f\u0438\u0448\u0438 \u0431\u043e\u0442\u0443"

    .line 859
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    const/16 p0, 0x3d4

    return p0

    :cond_4a
    const-string v7, "\u0418\u043c\u0435\u043d\u043d\u043e \u0442\u0430\u043a \u043c\u043e\u0436\u043d\u043e \u0443\u0431\u0440"

    .line 861
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    const/16 p0, 0x3d5

    return p0

    :cond_4b
    const-string v7, "\u041a\u044d\u0448\u0431\u044d\u043a \u0440\u0443\u0431\u043b\u044f\u043c\u0438, \u0430 \u043d\u0435 \u0431"

    .line 867
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    const/16 p0, 0x3d8

    return p0

    :cond_4c
    const-string v7, "\u0420\u0435\u0431\u044f\u0442\u0430, \u043d\u0430\u043f\u0438\u0441\u0430\u043b\u0430 \u0431\u043e\u0442"

    .line 871
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const/16 p0, 0x3da

    return p0

    :cond_4d
    const-string v7, "\u0412\u0437\u044f\u043b\u0430 72"

    .line 877
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    const/16 p0, 0x3dd

    return p0

    :cond_4e
    const-string v7, "\u0422\u0420\u0415\u0411\u0423\u0415\u0422\u0421\u042f \u0421\u041e\u0417\u0414\u0410\u0422\u0415\u041b\u042c \u0421\u0410\u0419"

    .line 881
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4f

    const/16 p0, 0x3df

    return p0

    :cond_4f
    const-string v7, "\u26a0 \u041c\u0433\u043d\u043e\u0432\u0435\u043d\u043d\u044b\u0435 \u0437\u0430\u0439\u043c"

    .line 885
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_50

    const/16 p0, 0x3e1

    return p0

    :cond_50
    const-string v7, "\u0425o\u0447e\u0448\u044c \u0442a\u043a\u0438e c\u0442\u0438\u043aep\u044b?"

    .line 891
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_51

    const/16 p0, 0x3e4

    return p0

    :cond_51
    const-string v7, "\u0425\u0430\u043b\u044f\u0432\u043d\u044b\u0439 \u041a\u0438\u043d\u043e\u043f\u043e\u0438\u0441\u043a "

    .line 893
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    const/16 p0, 0x3e5

    return p0

    :cond_52
    const-string v7, "\u041a\u0430\u043a \u0421\u0442\u0430\u043b\u0438\u043d \u043f\u043e\u043c\u043d"

    .line 895
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_53

    const/16 p0, 0x3e6

    return p0

    :cond_53
    const-string v7, "\ud83d\ude03\u041d\u0430\u0434\u043e\u0435\u043b\u0438 \u043a\u0430\u0440\u0442\u0438\u043d"

    .line 897
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_54

    const/16 p0, 0x3e7

    return p0

    :cond_54
    const-string v7, "\u042d\u0442\u043e \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e \u0438 \u0443\u0434\u043e\u0431\u043d\u043e \u2705"

    .line 901
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_55

    const/16 p0, 0x3e9

    return p0

    :cond_55
    const-string v7, "\u0412\u0441\u0435\u043c \u043f\u0440\u0438\u0432\u0435\u0442! \u0412\u0437\u044f\u043b\u0430 44"

    .line 903
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    const/16 p0, 0x3ea

    return p0

    :cond_56
    const-string v7, "\u0411\u044b\u043b\u0438 \u043e\u0447\u0435\u043d\u044c \u043d\u0443\u0436\u043d\u044b \u0434\u0435\u043d\u044c\u0433\u0438,"

    .line 905
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_57

    const/16 p0, 0x3eb

    return p0

    :cond_57
    const-string v7, "\ud83d\udcb0 \u0412\u044b\u0434\u0430\u0435\u043c \u0437\u0430\u0439\u043c"

    .line 907
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    const/16 p0, 0x3ec

    return p0

    :cond_58
    const-string v7, "\u2757\u0414\u0435\u043b\u0430\u0439 \u043a\u0430\u043a \u044f!"

    .line 913
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_59

    const/16 p0, 0x3ef

    return p0

    :cond_59
    const-string v7, "\u041a\u043e\u043d\u0447\u0430\u0435\u0442\u0441\u044f \u0431\u0435\u043d\u0437\u0438\u043d \u0438\u043b\u0438 \u0441\u0442"

    .line 917
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a

    const/16 p0, 0x3f1

    return p0

    :cond_5a
    const-string v7, "\ud83e\udd14 \u041d\u0435 \u0445\u043e\u0447\u0435\u0448\u044c \u043e\u043a\u0430\u0437"

    .line 919
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5b

    const/16 p0, 0x3f2

    return p0

    :cond_5b
    const-string v7, "\u0421\u043d\u044f\u043b\u0430 55 000 \u0440\u0443\u0431"

    .line 921
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    const/16 p0, 0x3f3

    return p0

    :cond_5c
    const-string v7, "\u042d\u0442\u043e \u043a\u0430\u043a \u0442\u0430\u043a\u043e\u0435 \u043f\u0440\u0438\u0434\u0443\u043c\u0430\u043b\u0438?"

    .line 923
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5d

    const/16 p0, 0x3f4

    return p0

    :cond_5d
    const-string v7, "\u0411\u0438\u0437\u043d\u0435\u0441-\u0438\u0434\u0435\u044f: [c"

    .line 929
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5e

    const/16 p0, 0x3f7

    return p0

    :cond_5e
    const-string v7, "\u041a\u043e\u0433\u0434\u0430 \u0432\u0441\u0451 \u0436\u0435 \u0440\u0435\u0448\u0438\u043b\u0441\u044f \u043e\u0442"

    .line 933
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    const/16 p0, 0x3f9

    return p0

    :cond_5f
    const-string v7, "\ud83d\udd25\u041c\u043e\u0431\u0438\u043b\u044c\u043d\u0430\u044f \u0441\u0432\u044f\u0437\u044c \u0431"

    .line 937
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    const/16 p0, 0x3fb

    return p0

    :cond_60
    const-string v7, "\u041d\u0435\u0442 \u0432\u0440\u0435\u043c\u0435\u043d\u0438 \u043e\u0431\u044a\u044f\u0441\u043d\u044f\u0442\u044c, \u043d\u043e \u043c"

    .line 939
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_61

    const/16 p0, 0x3fc

    return p0

    :cond_61
    const-string v7, "\u0412\u043e\u043b\u0448\u0435\u0431\u043d\u044b\u0439 \u0434\u0435\u0442\u0441\u043a\u0438\u0439 \u043f\u043e\u0440\u0442"

    .line 941
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_62

    const/16 p0, 0x3fd

    return p0

    :cond_62
    const-string v7, "\u0421\u043e\u0437\u0434\u0430\u0434\u0438\u043c \u0438\u043d\u0442\u0435\u0440\u0435\u0441\u043d\u044b\u0439 \u0438\u043d\u0442\u0435\u0440\u044c\u0435\u0440 \u0441 \u043a"

    .line 945
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    const/16 p0, 0x3ff

    return p0

    :cond_63
    const-string v7, "\u2757\u041d\u0443\u0436\u0435\u043d \u0437\u0430\u0439\u043c?"

    .line 947
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    const/16 p0, 0x400

    return p0

    :cond_64
    const-string v7, "\u041d\u0423\u0416\u041d\u042b \u0414\u0415\u041d\u042c\u0413\u0418 \u0412 \u0414\u041e\u041b\u0413?"

    .line 949
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    const/16 p0, 0x401

    return p0

    :cond_65
    const-string v7, "\u0421\u0440\u043e\u0447\u043d\u043e \u043d\u0443\u0436\u043d\u044b \u0431\u044b\u043b\u0438 \u0434\u0435\u043d\u044c"

    .line 951
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_66

    const/16 p0, 0x402

    return p0

    :cond_66
    const-string v7, "\u0421\u0420\u041e\u0427\u041d\u041e! \u203c"

    .line 953
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_67

    const/16 p0, 0x403

    return p0

    :cond_67
    const-string v7, "\ud83d\udc5b\u0417\u0410\u041a\u0410\u0416\u0418 \u0421\u0415\u0419\u0427\u0410\u0421"

    .line 955
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_68

    const/16 p0, 0x404

    return p0

    :cond_68
    const-string v7, "\u0411\u043e\u043d\u0443\u0441 \u0437\u0430\u0447\u0438\u0441\u043b\u0435\u043d \ud83d\udc4d\ud83c\udffb"

    .line 957
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_69

    const/16 p0, 0x405

    return p0

    :cond_69
    const-string v7, "\u041e\u043d \u0442\u0430\u043a\u043e\u0439 \u043e\u0434\u0438\u043d \ud83d\ude0e"

    .line 959
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6a

    const/16 p0, 0x406

    return p0

    :cond_6a
    const-string v7, "\u0415\u0441\u043b\u0438 \u0432\u0430\u043c \u043f\u043e\u0434\u0445\u043e\u0434\u0438\u0442 \u0445\u043e\u0442\u044f \u0431\u044b \u043e"

    .line 961
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6b

    const/16 p0, 0x407

    return p0

    :cond_6b
    const-string v7, "\u0415\u0441\u0442\u044c \u043a\u043e\u0435-\u0447\u0442\u043e, \u0447\u0442\u043e \u0432\u044b\u0433\u043e\u0434\u043d\u043e \u043e\u0442\u043b"

    .line 963
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6c

    const/16 p0, 0x408

    return p0

    :cond_6c
    const-string v7, "\u0412\u042b \u0414\u0410\u0416\u0415 \u041d\u0415 \u041f\u041e\u0414\u041e\u0417\u0420\u0415\u0412\u0410\u0415\u0422\u0415, \u0427\u0415\u041c \u041d"

    .line 965
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    const/16 p0, 0x409

    return p0

    :cond_6d
    const-string v7, "\ud83d\udd251000 \u20bd \u0437\u0430 \u043f"

    .line 967
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6e

    const/16 p0, 0x40a

    return p0

    :cond_6e
    const-string v7, "\u0412\u043e\u043f\u043b\u043e\u0449\u0430\u0439\u0442\u0435 \u0432 \u0436\u0438\u0437\u043d\u044c \u0441\u0430\u043c\u044b\u0435 \u0441\u043c\u0435\u043b\u044b\u0435 \u043c\u0435\u0447\u0442\u044b \u2728"

    .line 969
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6f

    const/16 p0, 0x40b

    return p0

    :cond_6f
    const-string v7, "\ud83d\udd25 \u041e\u0421\u0415\u041d\u041d\u0418\u0419 \u041f\u0420\u0418\u0417\u042b\u0412"

    .line 971
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_70

    const/16 p0, 0x40c

    return p0

    :cond_70
    const-string v7, "\u0412 \u0422\u0438\u043d\u044c\u043a\u043e\u0444\u0444 \u0432\u044b \u043c\u043e\u0436\u0435\u0442\u0435"

    .line 973
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_71

    const/16 p0, 0x40d

    return p0

    :cond_71
    const-string v7, "\u0422\u0441\u0441\u0441, \u044d\u0442\u043e \u0441\u0435\u043a\u0440\u0435\u0442\u043d\u044b\u0439 \u043f"

    .line 975
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/16 p0, 0x40e

    return p0

    :cond_72
    const-string v7, "\u041e\u043d \u043f\u0440\u043e\u0441\u0442\u043e \u0448\u0432\u044b\u0440\u043d\u0443\u043b \u043f\u043e\u0440\u0442\u0444"

    .line 977
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_73

    const/16 p0, 0x40f

    return p0

    :cond_73
    const-string v7, "\ud83d\udcb0\u0417\u0430\u0440\u0430\u0431\u0430\u0442\u044b\u0432\u0430\u0439"

    .line 979
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_74

    const/16 p0, 0x410

    return p0

    :cond_74
    const-string v7, "...\u0421\u043f\u043e\u0441\u043e\u0431, \u043a\u043e\u0442\u043e\u0440\u044b\u043c \u041d"

    .line 981
    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_75

    const/16 p0, 0x411

    return p0

    .line 985
    :cond_75
    sget-object v7, Lcom/perm/utils/SpamHelper;->serverStrings:Ljava/util/ArrayList;

    if-nez v7, :cond_76

    .line 986
    invoke-static {}, Lcom/perm/utils/SpamHelper;->initServerRules()V

    :cond_76
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 987
    :goto_0
    sget-object v9, Lcom/perm/utils/SpamHelper;->serverStrings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_78

    .line 988
    sget-object v9, Lcom/perm/utils/SpamHelper;->serverStrings:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 989
    sget-object p0, Lcom/perm/utils/SpamHelper;->serverIds:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_77
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 992
    :cond_78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xce4

    if-le v8, v9, :cond_79

    return v6

    :cond_79
    const-wide/16 v8, 0x3e8

    :try_start_0
    const-string v10, "\u0440\u043e\u0437\u044b\u0433\u0440\u044b\u0448"

    .line 996
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7a

    const-string v10, "\u0420\u0430\u0437\u044b\u0433\u0440\u044b\u0432\u0430\u0435\u043c"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7a

    const-string v10, "\u0434\u043e\u0441\u0442\u0430\u043d\u0435\u0442\u0441\u044f"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7a

    const-string v10, "\u0434\u043e\u0441\u0442\u0430\u043d\u0443\u0442\u0441\u044f"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7a

    const-string v10, "\u0434\u0430\u0440\u0438\u0442"

    .line 997
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7a

    const-string v10, "\u0412\u044b\u0438\u0433\u0440\u0430\u0439"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7a

    const-string v10, "\u0434\u0430\u0440\u0438\u043c"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7a

    const-string v10, "\u0414\u0410\u0420\u0418\u041c"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7a

    const-string v10, "\u043f\u0440\u0438\u0437"

    .line 998
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7a

    const-string v10, "\u043e\u043d\u043a\u0443\u0440\u0441"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7b

    :cond_7a
    const-string v10, "\u0412\u0441\u0442\u0443\u043f\u0438 \u0432 \u0433\u0440\u0443\u043f\u043f\u0443"

    .line 1000
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bc

    const-string v10, "\u0434\u0435\u043b\u0430\u0442\u044c \u0440\u0435\u043f\u043e\u0441\u0442 "

    .line 1003
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bc

    const-string v10, "\u0414\u0435\u043b\u0430\u0439 \u0440\u0435\u043f\u043e\u0441\u0442"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bc

    const-string v10, "\u0435\u043f\u043e\u0441\u0442 \u044d\u0442\u043e\u0439 \u0437\u0430\u043f"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bc

    const-string v10, " \u0437\u0430 \u0440\u0435\u043f\u043e\u0441\u0442"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bc

    const-string v10, "\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f \u044d\u0442\u043e\u0439 \u0437\u0430\u043f\u0438\u0441\u044c\u044e"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bc

    const-string v10, "\u0441\u043b\u0443\u0447\u0430\u0439\u043d\u043e\u043c\u0443 \u043f\u043e\u0434\u043f\u0438\u0441\u0447\u0438\u043a\u0443"

    .line 1004
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bc

    const-string v10, "\u0441\u043b\u0443\u0447\u0430\u0439\u043d\u044b\u043c \u043f\u043e\u0434\u043f\u0438\u0441\u0447\u0438\u043a\u0430\u043c"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bc

    const-string v10, "\u0441\u043b\u0443\u0447\u0430\u0439\u043d\u043e\u043c\u0443 \u0443\u0447\u0430\u0441\u0442\u043d\u0438\u043a\u0443"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_bc

    const-string v10, "\u043f\u043e\u0434\u043f\u0438\u0441\u0447\u0438\u043a\u043e\u043c"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7b

    goto/16 :goto_4

    :cond_7b
    const-string v10, "\u0420\u0435\u0433\u0438\u0441\u0442\u0440\u0438\u0440\u0443\u0439\u0442\u0435\u0441\u044c \u043f\u043e \u0441\u0441\u044b\u043b\u043a\u0435"

    .line 1078
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_7d

    const/16 p0, 0x10

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_7c

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    return p0

    :cond_7d
    :try_start_1
    const-string v10, " \u0447\u043b\u0435\u043d "

    .line 1687
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7e

    const-string v10, " \u0447\u043b\u0435\u043d\u0430 "

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7f

    :cond_7e
    const-string v10, "y\u0432e\u043b\u0438\u0447"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_ba

    const-string v10, "\u0443\u0432\u0435\u043b\u0438\u0447"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7f

    goto/16 :goto_3

    :cond_7f
    const-string v10, "\u0415\u0441\u043b\u0438 \u0442\u044b \u043d\u0435 \u0433\u043e\u043c\u043e"

    .line 1959
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_81

    const/16 p0, 0x79

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_80

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    return p0

    :cond_81
    :try_start_2
    const-string v10, "\u0418\u0433p"

    .line 2027
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_83

    const/16 p0, 0x85

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_82

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    return p0

    :cond_83
    :try_start_3
    const-string v10, "\u0423 \u0442\u0435\u0431\u044f \u0435\u0441\u0442\u044c \u043d\u043e\u0432\u044b\u0435 "

    .line 2262
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_85

    const/16 p0, 0xe7

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_84

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    return p0

    :cond_85
    :try_start_4
    const-string v10, "\u0423\u0437\u043d\u0430\u0439 \u0441\u0432\u043e\u0438\u0445 \u043f\u043e\u043a"

    .line 2512
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v10, :cond_87

    const/16 p0, 0x132

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_86

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    return p0

    :cond_87
    :try_start_5
    const-string v10, "vk.cc"

    .line 2585
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8b

    const-string v10, "53%"

    .line 2586
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_89

    const/16 p0, 0x155

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_88

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    return p0

    :cond_89
    :try_start_6
    const-string v10, "50%"

    .line 2588
    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v10, :cond_8b

    const/16 p0, 0x1e8

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_8a

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8a
    return p0

    :cond_8b
    :try_start_7
    const-string v10, "zimerbot"

    .line 2774
    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v10, :cond_8d

    const/16 p0, 0x1b5

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_8c

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    return p0

    :cond_8d
    :try_start_8
    const-string v10, "\u041d\u0430\u043f\u0438\u0448\u0438 \u0431\u043e\u0442\u0443"

    .line 2780
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v10, :cond_8f

    const/16 p0, 0x1b8

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_8e

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    return p0

    :cond_8f
    :try_start_9
    const-string v10, "\ud83c\udf1f \u041f\u041e\u041b\u0423\u0427\u0418 \u043e\u0442 1"

    .line 2794
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v10, :cond_91

    const/16 p0, 0x1bf

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_90

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    return p0

    :cond_91
    :try_start_a
    const-string v10, "\u0428\u0438\u043a\u0430\u0440\u043d\u0430\u044f \u0444\u043e\u0442\u043e\u043a\u0430\u0440\u0442"

    .line 2814
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v10, :cond_93

    const/16 p0, 0x1c9

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_92

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return p0

    :cond_93
    :try_start_b
    const-string v10, "\u261d\u0421\u0440\u043e\u0447\u043d\u043e \u043f\u043e\u043d\u0430\u0434\u043e\u0431"

    .line 2816
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v10, :cond_95

    const/16 p0, 0x1ca

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_94

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    return p0

    :cond_95
    :try_start_c
    const-string v10, "liza_dengi"

    .line 2828
    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v10, :cond_97

    const/16 p0, 0x1d0

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_96

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    return p0

    :cond_97
    :try_start_d
    const-string v10, "\u0427\u0435\u043a\u0430\u0439 \u0438\u0441\u0442\u043e\u0447\u043d\u0438\u043a"

    .line 2838
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v10, :cond_99

    const/16 p0, 0x1d5

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_98

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    return p0

    :cond_99
    :try_start_e
    const-string v10, "izaimobot"

    .line 2844
    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v10, :cond_9b

    const/16 p0, 0x1d8

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_9a

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    return p0

    :cond_9b
    :try_start_f
    const-string v10, "\u0422\u0435\u0431\u0435 \u0421\u0420\u041e\u0427\u041d\u041e \u043f\u043e\u043d\u0430\u0434"

    .line 2854
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v10, :cond_9d

    const/16 p0, 0x1dd

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_9c

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    return p0

    :cond_9d
    :try_start_10
    const-string v10, "\u0411\u0438\u0437\u043d\u0435\u0441-\u0438\u0434\u0435\u044f: \u0422\u0440\u0435"

    .line 2866
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v10, :cond_9f

    const/16 p0, 0x1e3

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_9e

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    return p0

    :cond_9f
    :try_start_11
    const-string v10, "mnogokartinrf"

    .line 2872
    invoke-virtual {p0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v10, :cond_a1

    const/16 p0, 0x1e6

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_a0

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    return p0

    :cond_a1
    :try_start_12
    const-string v10, "\u042d\u0442\u043e \u0434\u0435\u0431\u0435\u0442\u043e\u0432\u0430\u044f \u043a"

    .line 2876
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v10, :cond_a3

    const/16 p0, 0x1e9

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_a2

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    return p0

    :cond_a3
    :try_start_13
    const-string v10, "\u0418\u0449\u0443 \u0441\u043f\u043e\u0441\u043e\u0431\u043d\u044b\u0445 \u0443\u0447\u0435\u043d\u0438\u043a\u043e\u0432 \u043d"

    .line 2886
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v10, :cond_a5

    const/16 p0, 0x1ee

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_a4

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a4
    return p0

    :cond_a5
    :try_start_14
    const-string v10, "\u041d\u0430\u0443\u0447\u0438\u043c \u0441\u043e\u0437\u0434\u0430\u0432\u0430\u0442\u044c \u0430\u043d\u0438\u043c"

    .line 2970
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v10, :cond_a7

    const/16 p0, 0x218

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_a6

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    return p0

    :cond_a7
    :try_start_15
    const-string v10, "\ud83d\udccd\u0415\u0441\u043b\u0438 \u0432\u044b \u0442"

    .line 2994
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v10, :cond_a9

    const/16 p0, 0x225

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_a8

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    return p0

    :cond_a9
    :try_start_16
    const-string v10, "90% \u043b\u044e\u0434\u0435\u0439 \u043d"

    .line 3014
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    if-eqz v10, :cond_ab

    const/16 p0, 0x22f

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_aa

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    return p0

    :cond_ab
    :try_start_17
    const-string v10, "\u041d\u0435 \u0437\u0430\u0445\u043e\u0434\u0438, \u0435"

    .line 3038
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v10, :cond_ad

    const/16 p0, 0x23b

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_ac

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    return p0

    :cond_ad
    :try_start_18
    const-string v10, "\u0421\u0435\u0433\u043e\u0434\u043d\u044f \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u0430 \u0438 \u043e"

    .line 3054
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz v10, :cond_af

    const/16 p0, 0x244

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_ae

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    return p0

    :cond_af
    :try_start_19
    const-string v10, "\u0421\u0440\u043e\u0447\u043d\u043e \u043f\u043e\u043d\u0430\u0434\u043e\u0431\u0438\u043b\u0438\u0441\u044c \u0434\u0435\u043d\u044c\u0433\u0438"

    .line 3098
    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v10, :cond_b1

    const/16 p0, 0x25a

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_b0

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    return p0

    .line 3128
    :cond_b1
    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x24e

    if-ge v10, v11, :cond_b3

    .line 3129
    sget-object v10, Lcom/perm/utils/SpamHelper;->readMorePattern:Ljava/util/regex/Pattern;

    invoke-static {p0, v10}, Lcom/perm/utils/SpamHelper;->match(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v10
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz v10, :cond_b3

    const/16 p0, 0x8d

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_b2

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    return p0

    .line 3135
    :cond_b3
    :try_start_1b
    sget-object v10, Lcom/perm/utils/SpamHelper;->keywords:[Ljava/lang/String;

    if-nez v10, :cond_b5

    .line 3136
    sget-object v10, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "new_spam_words"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3138
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_b4

    const-string v11, ","

    .line 3139
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/perm/utils/SpamHelper;->keywords:[Ljava/lang/String;

    goto :goto_1

    :cond_b4
    new-array v10, v7, [Ljava/lang/String;

    .line 3141
    sput-object v10, Lcom/perm/utils/SpamHelper;->keywords:[Ljava/lang/String;

    .line 3146
    :cond_b5
    :goto_1
    sget-object v10, Lcom/perm/utils/SpamHelper;->keywords:[Ljava/lang/String;

    array-length v11, v10

    :goto_2
    if-ge v7, v11, :cond_b8

    aget-object v12, v10, v7

    .line 3147
    invoke-virtual {p0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-eqz v12, :cond_b7

    const/4 p0, -0x2

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_b6

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    return p0

    :cond_b7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3156
    :cond_b8
    sget-boolean p0, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz p0, :cond_b9

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 3158
    sget p0, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v12, p0

    sub-long/2addr v10, v4

    div-long/2addr v10, v8

    add-long/2addr v12, v10

    long-to-int p0, v12

    sput p0, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget p0, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    return v6

    :cond_ba
    :goto_3
    const/16 p0, 0x4c

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_bb

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    return p0

    :cond_bc
    :goto_4
    const/16 p0, 0xb

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_bd

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bd
    return p0

    :catchall_0
    move-exception v7

    .line 3152
    :try_start_1c
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3153
    invoke-static {v7, p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 3156
    sget-boolean p0, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz p0, :cond_be

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 3158
    sget p0, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v12, p0

    sub-long/2addr v10, v4

    div-long/2addr v10, v8

    add-long/2addr v12, v10

    long-to-int p0, v12

    sput p0, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget p0, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    return v6

    :catchall_1
    move-exception p0

    .line 3156
    sget-boolean v6, Lcom/perm/kate/KApplication;->is_dev:Z

    if-eqz v6, :cond_bf

    .line 3157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 3158
    sget v10, Lcom/perm/utils/SpamHelper;->sum:I

    int-to-long v10, v10

    sub-long/2addr v6, v4

    div-long/2addr v6, v8

    add-long/2addr v10, v6

    long-to-int v4, v10

    sput v4, Lcom/perm/utils/SpamHelper;->sum:I

    .line 3159
    sget v4, Lcom/perm/utils/SpamHelper;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/utils/SpamHelper;->count:I

    .line 3160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/perm/utils/SpamHelper;->sum:I

    sget v5, Lcom/perm/utils/SpamHelper;->count:I

    div-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    :cond_bf
    throw p0

    :cond_c0
    :goto_5
    return v6
.end method

.method public static initServerRules()V
    .locals 3

    .line 3244
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    sget-object v1, Lcom/perm/utils/SpamHelper;->PREF_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3245
    sget-object v1, Lcom/perm/utils/SpamHelper;->PREF_NAME:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3246
    invoke-static {v0}, Lcom/perm/utils/SpamHelper;->initServerRules(Ljava/lang/String;)V

    return-void
.end method

.method public static initServerRules(Ljava/lang/String;)V
    .locals 4

    .line 3223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v2, ";"

    .line 3226
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3227
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 3228
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    .line 3229
    :goto_0
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 3231
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    .line 3232
    aget-object v3, p0, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3235
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3236
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 3239
    :cond_0
    sput-object v0, Lcom/perm/utils/SpamHelper;->serverStrings:Ljava/util/ArrayList;

    .line 3240
    sput-object v1, Lcom/perm/utils/SpamHelper;->serverIds:Ljava/util/ArrayList;

    return-void
.end method

.method public static isHideSpamEnabled()Z
    .locals 3

    .line 3196
    sget-object v0, Lcom/perm/utils/SpamHelper;->hide_spam:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3197
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "key_hide_news_spam"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/SpamHelper;->hide_spam:Ljava/lang/Boolean;

    .line 3198
    :cond_0
    sget-object v0, Lcom/perm/utils/SpamHelper;->hide_spam:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSpam(Ljava/lang/String;)Z
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/perm/utils/SpamHelper;->checkRules(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    .line 40
    invoke-static {p0}, Lcom/perm/utils/SpamHelper;->reportMatch(I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static match(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 0

    .line 3188
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method static reportMatch(I)V
    .locals 8

    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    .line 23
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x270b

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "spam match"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    .line 27
    new-instance v4, Ljava/lang/StackTraceElement;

    const-string v5, "FakeClass"

    const-string v6, "spamMatch"

    const-string v7, "FakeClass.java"

    invoke-direct {v4, v5, v6, v7, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method public static resetWordsCache()V
    .locals 1

    const/4 v0, 0x0

    .line 3206
    sput-object v0, Lcom/perm/utils/SpamHelper;->keywords:[Ljava/lang/String;

    return-void
.end method

.method public static setHideSpamEnabled(Z)V
    .locals 0

    .line 3202
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/perm/utils/SpamHelper;->hide_spam:Ljava/lang/Boolean;

    return-void
.end method

.method public static setServerRules(Ljava/lang/String;)V
    .locals 3

    .line 3212
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    sget-object v1, Lcom/perm/utils/SpamHelper;->PREF_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3213
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/perm/utils/SpamHelper;->PREF_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3216
    invoke-static {p0}, Lcom/perm/utils/SpamHelper;->initServerRules(Ljava/lang/String;)V

    return-void
.end method
