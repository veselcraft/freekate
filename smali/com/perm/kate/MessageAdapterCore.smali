.class public Lcom/perm/kate/MessageAdapterCore;
.super Ljava/lang/Object;
.source "MessageAdapterCore.java"


# instance fields
.field private activity:Lcom/perm/kate/BaseActivity;

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field ava_margin:I

.field big_photos:Z

.field private botButtonClickListener:Landroid/view/View$OnClickListener;

.field groupCache:Lcom/perm/utils/GroupCache;

.field hint:Ljava/lang/String;

.field private messageThreadFragment:Lcom/perm/kate/MessageThreadFragment;

.field public selectedMessages:Ljava/util/ArrayList;

.field public showBubbles:Z

.field private showNames:Z

.field show_ava:Z

.field public states:Ljava/util/HashMap;

.field public useTwoItems:Z

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Z)V
    .locals 12

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->big_photos:Z

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    .line 38
    iput-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    .line 43
    sget-boolean v1, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    iput v1, p0, Lcom/perm/kate/MessageAdapterCore;->ava_margin:I

    .line 45
    new-instance v1, Lcom/perm/utils/GroupCache;

    invoke-direct {v1}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/MessageAdapterCore;->groupCache:Lcom/perm/utils/GroupCache;

    .line 214
    new-instance v1, Lcom/perm/kate/MessageAdapterCore$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageAdapterCore$1;-><init>(Lcom/perm/kate/MessageAdapterCore;)V

    iput-object v1, p0, Lcom/perm/kate/MessageAdapterCore;->botButtonClickListener:Landroid/view/View$OnClickListener;

    .line 419
    new-instance v1, Lcom/perm/kate/MessageAdapterCore$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessageAdapterCore$2;-><init>(Lcom/perm/kate/MessageAdapterCore;)V

    iput-object v1, p0, Lcom/perm/kate/MessageAdapterCore;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 49
    iput-object p1, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    .line 50
    iput-boolean p2, p0, Lcom/perm/kate/MessageAdapterCore;->showNames:Z

    .line 51
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_reverse_message_2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    .line 52
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_messages_in_bubbles_2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    .line 53
    invoke-static {}, Lcom/perm/kate/KApplication;->isTwoPaneMessages()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x12c

    const/16 v6, 0x12c

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 54
    :goto_1
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/perm/kate/MessageAdapterCore;->ava_margin:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 55
    :goto_2
    new-instance v11, Lcom/perm/kate/AttachmentsHelper;

    iget-boolean v5, p0, Lcom/perm/kate/MessageAdapterCore;->big_photos:Z

    const/4 v7, 0x1

    iget-boolean v3, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x13

    move v8, v1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const/16 v9, 0x18

    const/16 v10, 0x9

    move-object v3, v11

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object v11, p0, Lcom/perm/kate/MessageAdapterCore;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 57
    iput-boolean v2, v11, Lcom/perm/kate/AttachmentsHelper;->linkMargins:Z

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f0236

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MessageAdapterCore;->hint:Ljava/lang/String;

    .line 59
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "key_messages_ava"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz p2, :cond_4

    .line 62
    iput-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    .line 64
    :cond_4
    iget-boolean p1, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    if-nez p1, :cond_5

    .line 65
    iput-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageAdapterCore;)Lcom/perm/kate/MessageThreadFragment;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/MessageAdapterCore;->messageThreadFragment:Lcom/perm/kate/MessageThreadFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/MessageAdapterCore;)Lcom/perm/kate/BaseActivity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    return-object p0
.end method

.method public static getActionMessage(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/utils/UserCache;JLjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, " "

    if-eqz p2, :cond_1

    .line 229
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    .line 233
    :goto_0
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 234
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const p0, 0x7f0f0345

    .line 256
    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p0, 0x7f0f033f

    .line 254
    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 252
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f0074

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f00b6

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f042e

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 246
    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f0578

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 242
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v3, p4

    if-eqz p0, :cond_2

    .line 243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f017c

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 244
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f030b

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    if-eqz p2, :cond_4

    .line 238
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v3, p4

    if-nez p0, :cond_3

    goto :goto_1

    .line 240
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f0142

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 239
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f015b

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static getBgByTheme(Z)I
    .locals 1

    .line 323
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    sparse-switch v0, :sswitch_data_0

    if-eqz p0, :cond_c

    const p0, 0x7f080194

    goto/16 :goto_c

    :sswitch_0
    if-eqz p0, :cond_0

    const p0, 0x7f080192

    goto :goto_0

    :cond_0
    const p0, 0x7f080191

    :goto_0
    return p0

    :sswitch_1
    if-eqz p0, :cond_1

    const p0, 0x7f0801a1

    goto :goto_1

    :cond_1
    const p0, 0x7f0801ab

    :goto_1
    return p0

    :sswitch_2
    if-eqz p0, :cond_2

    const p0, 0x7f0801a0

    goto :goto_2

    :cond_2
    const p0, 0x7f0801aa

    :goto_2
    return p0

    :sswitch_3
    if-eqz p0, :cond_3

    const p0, 0x7f08019f

    goto :goto_3

    :cond_3
    const p0, 0x7f080190

    :goto_3
    return p0

    :sswitch_4
    if-eqz p0, :cond_4

    const p0, 0x7f08019e

    goto :goto_4

    :cond_4
    const p0, 0x7f08018f

    :goto_4
    return p0

    :sswitch_5
    if-eqz p0, :cond_5

    const p0, 0x7f08019d

    goto :goto_5

    :cond_5
    const p0, 0x7f08018e

    :goto_5
    return p0

    :sswitch_6
    if-eqz p0, :cond_6

    const p0, 0x7f08019c

    goto :goto_6

    :cond_6
    const p0, 0x7f0801a9

    :goto_6
    return p0

    :sswitch_7
    if-eqz p0, :cond_7

    const p0, 0x7f08019b

    goto :goto_7

    :cond_7
    const p0, 0x7f08018d

    :goto_7
    return p0

    :sswitch_8
    if-eqz p0, :cond_8

    const p0, 0x7f080199

    goto :goto_8

    :cond_8
    const p0, 0x7f08018c

    :goto_8
    return p0

    :sswitch_9
    if-eqz p0, :cond_9

    const p0, 0x7f080198

    goto :goto_9

    :cond_9
    const p0, 0x7f0801a8

    :goto_9
    return p0

    :sswitch_a
    if-eqz p0, :cond_a

    const p0, 0x7f080197

    goto :goto_a

    :cond_a
    const p0, 0x7f0801a7

    :goto_a
    return p0

    :sswitch_b
    if-eqz p0, :cond_b

    const p0, 0x7f080196

    goto :goto_b

    :cond_b
    const p0, 0x7f08018b

    :goto_b
    return p0

    :cond_c
    const p0, 0x7f08018a

    :goto_c
    return p0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c5 -> :sswitch_b
        0x7f1000c7 -> :sswitch_a
        0x7f1000c9 -> :sswitch_9
        0x7f1000cb -> :sswitch_8
        0x7f1000cd -> :sswitch_7
        0x7f1000d1 -> :sswitch_6
        0x7f1000d3 -> :sswitch_5
        0x7f1000d5 -> :sswitch_4
        0x7f1000d7 -> :sswitch_3
        0x7f1000d9 -> :sswitch_2
        0x7f1000db -> :sswitch_1
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method public static getBgByTheme2(Z)I
    .locals 3

    .line 354
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f08019a

    const v2, 0x7f08018c

    sparse-switch v0, :sswitch_data_0

    if-eqz p0, :cond_c

    const p0, 0x7f080195

    goto/16 :goto_c

    :sswitch_0
    if-eqz p0, :cond_0

    const p0, 0x7f080193

    goto :goto_0

    :cond_0
    const p0, 0x7f080191

    :goto_0
    return p0

    :sswitch_1
    if-eqz p0, :cond_1

    const p0, 0x7f0801a1

    goto :goto_1

    :cond_1
    const p0, 0x7f0801ab

    :goto_1
    return p0

    :sswitch_2
    if-eqz p0, :cond_2

    const p0, 0x7f0801a0

    goto :goto_2

    :cond_2
    const p0, 0x7f0801aa

    :goto_2
    return p0

    :sswitch_3
    if-eqz p0, :cond_3

    const p0, 0x7f08019f

    goto :goto_3

    :cond_3
    const p0, 0x7f080190

    :goto_3
    return p0

    :sswitch_4
    if-eqz p0, :cond_4

    const p0, 0x7f08019e

    goto :goto_4

    :cond_4
    const p0, 0x7f08018f

    :goto_4
    return p0

    :sswitch_5
    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    const v1, 0x7f08018c

    :goto_5
    return v1

    :sswitch_6
    if-eqz p0, :cond_6

    const p0, 0x7f08019c

    goto :goto_6

    :cond_6
    const p0, 0x7f0801a9

    :goto_6
    return p0

    :sswitch_7
    if-eqz p0, :cond_7

    const p0, 0x7f06005f

    goto :goto_7

    :cond_7
    const p0, 0x7f08018d

    :goto_7
    return p0

    :sswitch_8
    if-eqz p0, :cond_8

    goto :goto_8

    :cond_8
    const v1, 0x7f08018c

    :goto_8
    return v1

    :sswitch_9
    if-eqz p0, :cond_9

    const p0, 0x7f080198

    goto :goto_9

    :cond_9
    const p0, 0x7f0801a8

    :goto_9
    return p0

    :sswitch_a
    if-eqz p0, :cond_a

    const p0, 0x7f080197

    goto :goto_a

    :cond_a
    const p0, 0x7f0801a7

    :goto_a
    return p0

    :sswitch_b
    if-eqz p0, :cond_b

    const p0, 0x7f080196

    goto :goto_b

    :cond_b
    const p0, 0x7f08018b

    :goto_b
    return p0

    :cond_c
    const p0, 0x7f08018a

    :goto_c
    return p0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c5 -> :sswitch_b
        0x7f1000c7 -> :sswitch_a
        0x7f1000c9 -> :sswitch_9
        0x7f1000cb -> :sswitch_8
        0x7f1000cd -> :sswitch_7
        0x7f1000d1 -> :sswitch_6
        0x7f1000d3 -> :sswitch_5
        0x7f1000d5 -> :sswitch_4
        0x7f1000d7 -> :sswitch_3
        0x7f1000d9 -> :sswitch_2
        0x7f1000db -> :sswitch_1
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method public static getBubbleColor()I
    .locals 1

    .line 385
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/high16 v0, 0x60000000

    return v0

    :sswitch_1
    const v0, -0xc8c3b9

    return v0

    :sswitch_2
    const v0, -0xddddde

    return v0

    :sswitch_3
    const v0, -0xc5dee4

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c5 -> :sswitch_3
        0x7f1000c7 -> :sswitch_2
        0x7f1000c9 -> :sswitch_1
        0x7f1000cb -> :sswitch_1
        0x7f1000d1 -> :sswitch_1
        0x7f1000d3 -> :sswitch_1
        0x7f1000d5 -> :sswitch_1
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDisplayName(Lcom/perm/kate/api/User;Lcom/perm/kate/api/Group;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 405
    iget-object p0, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    return-object p0

    .line 406
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_1

    .line 408
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 412
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " "

    .line 413
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_3
    iget-object p0, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showInLineBotKeyboard(Landroid/widget/LinearLayout;Lcom/perm/kate/api/BotKeyboard;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p2, :cond_2

    .line 206
    iget-object v0, p2, Lcom/perm/kate/api/BotKeyboard;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/perm/kate/api/BotKeyboard;->inline:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v1, p0, Lcom/perm/kate/MessageAdapterCore;->botButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p2, p1, v0, v1}, Lcom/perm/kate/BotKeyboardHelper;->fillKeyboard(Lcom/perm/kate/api/BotKeyboard;Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    :goto_0
    const/16 p2, 0x8

    .line 207
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public createNewView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 7

    .line 266
    iget-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0c00b5

    goto :goto_0

    :cond_0
    const v1, 0x7f0c00b6

    goto :goto_0

    :cond_1
    const v1, 0x7f0c00b4

    .line 267
    :goto_0
    iget-boolean v2, p0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    .line 268
    iget-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0c00c1

    const v1, 0x7f0c00c1

    goto :goto_1

    :cond_2
    const v0, 0x7f0c00c2

    const v1, 0x7f0c00c2

    goto :goto_1

    :cond_3
    const v0, 0x7f0c00c0

    const v1, 0x7f0c00c0

    .line 269
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    .line 270
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 271
    iget-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    const v0, 0x7f09038c

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 276
    :cond_5
    iget-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    const v1, 0x7f090099

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz v0, :cond_9

    .line 277
    iget v0, p0, Lcom/perm/kate/MessageAdapterCore;->ava_margin:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    if-eqz p2, :cond_8

    .line 278
    iget-boolean p2, p0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    if-nez p2, :cond_6

    goto :goto_3

    .line 284
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 285
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 287
    sget-boolean v4, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v4, :cond_7

    const-wide v4, 0x4051800000000000L    # 70.0

    goto :goto_2

    :cond_7
    const-wide v4, 0x4049800000000000L    # 51.0

    :goto_2
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    .line 288
    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    add-int/2addr v4, v0

    invoke-virtual {v3, v5, v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 289
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    goto :goto_4

    :cond_8
    :goto_3
    const p2, 0x7f09004f

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 280
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 281
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 295
    :cond_9
    :goto_4
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    if-eqz p2, :cond_c

    .line 297
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 300
    iget-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 301
    invoke-static {}, Lcom/perm/kate/MessageAdapterCore;->getBubbleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 304
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    const v2, -0x222223

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 310
    :cond_a
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v1, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v1, :cond_b

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    goto :goto_5

    :cond_b
    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    :goto_5
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 316
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_c
    return-object p1
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    .line 437
    iput-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->messageThreadFragment:Lcom/perm/kate/MessageThreadFragment;

    .line 438
    iget-object v1, p0, Lcom/perm/kate/MessageAdapterCore;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v1}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    .line 439
    iput-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    return-void
.end method

.method public displayMessage(Lcom/perm/kate/api/User;Lcom/perm/kate/api/Message;Lcom/perm/kate/api/User;Landroid/view/View;Lcom/perm/utils/UserCache;Ljava/util/ArrayList;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 73
    iget-boolean v3, v1, Lcom/perm/kate/api/Message;->is_out:Z

    if-eqz v3, :cond_0

    move-object/from16 v4, p3

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    const v5, 0x7f090016

    .line 80
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    iget-boolean v5, v1, Lcom/perm/kate/api/Message;->read_state:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    .line 82
    invoke-static {v6}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme2(Z)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 84
    :cond_1
    invoke-static {v7}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme2(Z)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    const v5, 0x7f09013d

    .line 85
    iget-boolean v8, v1, Lcom/perm/kate/api/Message;->read_state:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 87
    iget-wide v8, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v8, v9}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 88
    iget-object v5, v0, Lcom/perm/kate/MessageAdapterCore;->groupCache:Lcom/perm/utils/GroupCache;

    iget-wide v9, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-virtual {v5, v9, v10}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v8

    .line 89
    :goto_2
    invoke-static {v4, v5}, Lcom/perm/kate/MessageAdapterCore;->getDisplayName(Lcom/perm/kate/api/User;Lcom/perm/kate/api/Group;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f090183

    .line 90
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 91
    iget-boolean v11, v0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz v11, :cond_a

    if-eqz v4, :cond_3

    .line 94
    iget-object v8, v4, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 96
    :cond_3
    iget-wide v11, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v11, v12}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v3, :cond_4

    if-eqz v5, :cond_4

    .line 98
    iget-object v5, v5, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    move-object v12, v5

    goto :goto_3

    :cond_4
    move-object v12, v8

    .line 100
    :goto_3
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v11

    const/4 v14, 0x1

    const/16 v15, 0x5a

    .line 101
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v16

    const/16 v17, 0x1

    move-object v13, v10

    .line 100
    invoke-virtual/range {v11 .. v17}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/perm/kate/MessageAdapterCore;->hint:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v5, 0x7f09019c

    .line 103
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_a

    if-eqz v4, :cond_5

    .line 105
    iget-object v8, v4, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-eqz v4, :cond_6

    .line 106
    iget-wide v11, v4, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v11, v12}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v8, 0x0

    :cond_6
    if-eqz v4, :cond_7

    .line 108
    iget-object v11, v4, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    if-eqz v8, :cond_8

    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    const/4 v8, 0x4

    .line 109
    :goto_6
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v6, :cond_9

    const v6, 0x7f080203

    goto :goto_7

    :cond_9
    const v6, 0x7f080218

    .line 110
    :goto_7
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a
    const v5, 0x7f09038c

    .line 114
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 115
    iget-object v6, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    iget-wide v11, v1, Lcom/perm/kate/api/Message;->date:J

    invoke-static {v6, v11, v12}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 116
    iget-wide v11, v1, Lcom/perm/kate/api/Message;->update_time:J

    const-wide/16 v13, 0x0

    const-string v8, ", "

    cmp-long v15, v11, v13

    if-eqz v15, :cond_b

    .line 117
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    const v12, 0x7f0f00d2

    invoke-virtual {v6, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 118
    :cond_b
    iget-boolean v11, v0, Lcom/perm/kate/MessageAdapterCore;->showNames:Z

    if-eqz v11, :cond_d

    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_c

    iget-object v12, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    const v13, 0x7f0f0215

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_c
    move-object v12, v9

    :goto_8
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 122
    :cond_d
    iget-object v8, v1, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \u2605"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    :cond_e
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/perm/kate/api/Message;->read_state:Z

    const-string v11, ""

    if-eqz v6, :cond_f

    move-object v6, v11

    goto :goto_9

    :cond_f
    const-string v6, ", \u043d\u0435 \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u043d\u043e"

    :goto_9
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v6, 0x7f090129

    .line 129
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v8, 0x8

    .line 130
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v12, v0, Lcom/perm/kate/MessageAdapterCore;->states:Ljava/util/HashMap;

    if-eqz v12, :cond_12

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 132
    iget-object v12, v0, Lcom/perm/kate/MessageAdapterCore;->states:Ljava/util/HashMap;

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    .line 133
    sget-object v13, Lcom/perm/kate/MessageSendQueue$MessageData$State;->ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    if-ne v12, v13, :cond_10

    .line 134
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_10
    sget-object v6, Lcom/perm/kate/MessageSendQueue$MessageData$State;->SENDING:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    if-ne v12, v6, :cond_11

    .line 138
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v6, 0x7f0f046a

    .line 139
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 141
    :cond_11
    sget-object v6, Lcom/perm/kate/MessageSendQueue$MessageData$State;->QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    if-ne v12, v6, :cond_12

    .line 142
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v6, 0x7f0f012f

    .line 143
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_12
    if-eqz v4, :cond_13

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_13
    move-object v13, v11

    .line 148
    iget-object v12, v1, Lcom/perm/kate/api/Message;->action:Ljava/lang/Integer;

    iget-object v14, v1, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    iget-wide v4, v1, Lcom/perm/kate/api/Message;->uid:J

    iget-object v6, v1, Lcom/perm/kate/api/Message;->action_text:Ljava/lang/String;

    move-object/from16 v15, p5

    move-wide/from16 v16, v4

    move-object/from16 v18, v6

    invoke-static/range {v12 .. v18}, Lcom/perm/kate/MessageAdapterCore;->getActionMessage(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/utils/UserCache;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 150
    iput-object v4, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    :cond_14
    const v4, 0x7f09038e

    .line 152
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 153
    iget-object v6, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_15

    .line 154
    iget-object v6, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-static {v6}, Lcom/perm/kate/Helper;->removeBrokenChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 155
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v11, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-direct {v6, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {v6}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 159
    iget-object v11, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v6, v11, v7}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 160
    iget-object v11, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v11, v6}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 162
    :cond_15
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    const v5, 0x7f090049

    .line 164
    iget-object v6, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 166
    iget-wide v5, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    if-eqz v3, :cond_16

    .line 169
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 170
    :cond_16
    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f09038f

    .line 171
    invoke-virtual {v2, v3, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 173
    iget-object v3, v1, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-eqz v3, :cond_17

    const v6, 0x7f09005d

    .line 174
    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 176
    :cond_17
    iget-boolean v3, v0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz v3, :cond_18

    .line 177
    iget-object v3, v0, Lcom/perm/kate/MessageAdapterCore;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090186

    .line 178
    invoke-virtual {v10, v3, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 181
    :cond_18
    iget-wide v5, v1, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v3, 0x7f09019e

    .line 182
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v3, 0x7f09026e

    .line 185
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/view/ViewGroup;

    const v3, 0x7f0901bd

    .line 186
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/view/ViewGroup;

    const v3, 0x7f09004a

    .line 187
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/view/ViewGroup;

    const v3, 0x7f090158

    .line 188
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/view/ViewGroup;

    const v3, 0x7f09022a

    .line 189
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/view/ViewGroup;

    .line 190
    iget-object v9, v0, Lcom/perm/kate/MessageAdapterCore;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v16, v3

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v26, p6

    invoke-virtual/range {v9 .. v26}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const v3, 0x7f090146

    .line 192
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 193
    iget-object v4, v0, Lcom/perm/kate/MessageAdapterCore;->selectedMessages:Ljava/util/ArrayList;

    if-eqz v4, :cond_1a

    .line 194
    iget-wide v5, v1, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_b

    :cond_19
    const/16 v7, 0x8

    :goto_b
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    const v3, 0x7f0901c7

    .line 197
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 198
    iget-object v1, v1, Lcom/perm/kate/api/Message;->keyboard:Lcom/perm/kate/api/BotKeyboard;

    invoke-direct {v0, v2, v1}, Lcom/perm/kate/MessageAdapterCore;->showInLineBotKeyboard(Landroid/widget/LinearLayout;Lcom/perm/kate/api/BotKeyboard;)V

    return-void
.end method

.method public setMessageThreadFragment(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/perm/kate/MessageAdapterCore;->messageThreadFragment:Lcom/perm/kate/MessageThreadFragment;

    return-void
.end method
