.class public Lcom/perm/kate/MessageAdapterCore;
.super Ljava/lang/Object;
.source "MessageAdapterCore.java"


# instance fields
.field private activity:Lcom/perm/kate/BaseActivity;

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field ava_margin:I

.field big_photos:Z

.field groupCache:Lcom/perm/utils/GroupCache;

.field hint:Ljava/lang/String;

.field public selectedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public showBubbles:Z

.field private showNames:Z

.field show_ava:Z

.field public states:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/perm/kate/api/Message;",
            "Lcom/perm/kate/MessageSendQueue$MessageData$State;",
            ">;"
        }
    .end annotation
.end field

.field public useTwoItems:Z

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Z)V
    .locals 10
    .param p1, "activity"    # Lcom/perm/kate/BaseActivity;
    .param p2, "show_names"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->big_photos:Z

    .line 34
    iput-boolean v4, p0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    .line 35
    iput-boolean v4, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    .line 40
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    :goto_0
    iput v0, p0, Lcom/perm/kate/MessageAdapterCore;->ava_margin:I

    .line 42
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->groupCache:Lcom/perm/utils/GroupCache;

    .line 372
    new-instance v0, Lcom/perm/kate/MessageAdapterCore$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageAdapterCore$1;-><init>(Lcom/perm/kate/MessageAdapterCore;)V

    iput-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    .line 46
    iput-boolean p2, p0, Lcom/perm/kate/MessageAdapterCore;->showNames:Z

    .line 47
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_reverse_message_1"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    .line 48
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_messages_in_bubbles_1"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    .line 49
    invoke-static {}, Lcom/perm/kate/KApplication;->isTwoPaneMessages()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v3, 0x12c

    .line 50
    .local v3, "left_pane_offset":I
    :goto_1
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v8, p0, Lcom/perm/kate/MessageAdapterCore;->ava_margin:I

    .line 51
    .local v8, "round_ava_margin":I
    :goto_2
    new-instance v0, Lcom/perm/kate/AttachmentsHelper;

    iget-boolean v2, p0, Lcom/perm/kate/MessageAdapterCore;->big_photos:Z

    iget-boolean v1, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    if-eqz v1, :cond_5

    add-int/lit8 v5, v8, 0x13

    :goto_3
    const/16 v6, 0x18

    const/16 v7, 0x9

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 53
    iget-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    iput-boolean v9, v0, Lcom/perm/kate/AttachmentsHelper;->linkMargins:Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->hint:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_messages_ava"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    .line 57
    if-eqz p2, :cond_0

    .line 58
    iput-boolean v4, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    if-nez v0, :cond_1

    .line 61
    iput-boolean v4, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    .line 62
    :cond_1
    return-void

    .line 40
    .end local v3    # "left_pane_offset":I
    .end local v8    # "round_ava_margin":I
    :cond_2
    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_3
    move v3, v9

    .line 49
    goto :goto_1

    .restart local v3    # "left_pane_offset":I
    :cond_4
    move v8, v9

    .line 50
    goto :goto_2

    .restart local v8    # "round_ava_margin":I
    :cond_5
    move v5, v9

    .line 51
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageAdapterCore;)Lcom/perm/kate/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageAdapterCore;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    return-object v0
.end method

.method public static getActionMessage(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/utils/UserCache;JLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "action"    # Ljava/lang/Integer;
    .param p1, "user_name"    # Ljava/lang/String;
    .param p2, "action_mid"    # Ljava/lang/Long;
    .param p3, "userCache"    # Lcom/perm/utils/UserCache;
    .param p4, "from"    # J
    .param p6, "action_text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 186
    if-nez p0, :cond_0

    .line 213
    :goto_0
    return-object v3

    .line 188
    :cond_0
    const-string v1, ""

    .line 189
    .local v1, "second_user_name":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 190
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v2

    .line 191
    .local v2, "u":Lcom/perm/kate/api/User;
    if-eqz v2, :cond_1

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .end local v2    # "u":Lcom/perm/kate/api/User;
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    .line 195
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 197
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p4

    if-nez v3, :cond_2

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f07010d

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 199
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0700f4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 201
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, p4

    if-eqz v3, :cond_3

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f07010e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 203
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0702b2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 205
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0704f3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 207
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0703b0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 209
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070081

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 211
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f070059

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getBgByTheme(Z)I
    .locals 1
    .param p0, "unread"    # Z

    .prologue
    .line 276
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    packed-switch v0, :pswitch_data_0

    .line 302
    :pswitch_0
    if-eqz p0, :cond_c

    const v0, 0x7f0200e1

    :goto_0
    return v0

    .line 278
    :pswitch_1
    if-eqz p0, :cond_0

    const v0, 0x7f0200e4

    goto :goto_0

    :cond_0
    const v0, 0x7f0200f4

    goto :goto_0

    .line 280
    :pswitch_2
    if-eqz p0, :cond_1

    const v0, 0x7f0200ee

    goto :goto_0

    :cond_1
    const v0, 0x7f0200f8

    goto :goto_0

    .line 282
    :pswitch_3
    if-eqz p0, :cond_2

    const v0, 0x7f0200e5

    goto :goto_0

    :cond_2
    const v0, 0x7f0200f5

    goto :goto_0

    .line 284
    :pswitch_4
    if-eqz p0, :cond_3

    const v0, 0x7f0200e9

    goto :goto_0

    :cond_3
    const v0, 0x7f0200f6

    goto :goto_0

    .line 286
    :pswitch_5
    if-eqz p0, :cond_4

    const v0, 0x7f0200ed

    goto :goto_0

    :cond_4
    const v0, 0x7f0200f7

    goto :goto_0

    .line 288
    :pswitch_6
    if-eqz p0, :cond_5

    const v0, 0x7f0200eb

    goto :goto_0

    :cond_5
    const v0, 0x7f0200dc

    goto :goto_0

    .line 290
    :pswitch_7
    if-eqz p0, :cond_6

    const v0, 0x7f0200e3

    goto :goto_0

    :cond_6
    const v0, 0x7f0200d8

    goto :goto_0

    .line 292
    :pswitch_8
    if-eqz p0, :cond_7

    const v0, 0x7f0200e6

    goto :goto_0

    :cond_7
    const v0, 0x7f0200d9

    goto :goto_0

    .line 294
    :pswitch_9
    if-eqz p0, :cond_8

    const v0, 0x7f0200ec

    goto :goto_0

    :cond_8
    const v0, 0x7f0200dd

    goto :goto_0

    .line 296
    :pswitch_a
    if-eqz p0, :cond_9

    const v0, 0x7f0200e8

    goto :goto_0

    :cond_9
    const v0, 0x7f0200da

    goto :goto_0

    .line 298
    :pswitch_b
    if-eqz p0, :cond_a

    const v0, 0x7f0200ea

    goto :goto_0

    :cond_a
    const v0, 0x7f0200db

    goto :goto_0

    .line 300
    :pswitch_c
    if-eqz p0, :cond_b

    const v0, 0x7f0200df

    goto :goto_0

    :cond_b
    const v0, 0x7f0200de

    goto :goto_0

    .line 302
    :cond_c
    const v0, 0x7f0200d7

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public static getBgByTheme2(Z)I
    .locals 3
    .param p0, "unread"    # Z

    .prologue
    const v0, 0x7f0200e7

    const v1, 0x7f0200d9

    .line 307
    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    packed-switch v2, :pswitch_data_0

    .line 333
    :pswitch_0
    if-eqz p0, :cond_b

    const v0, 0x7f0200e2

    :cond_0
    :goto_0
    return v0

    .line 309
    :pswitch_1
    if-eqz p0, :cond_1

    const v0, 0x7f0200e4

    goto :goto_0

    :cond_1
    const v0, 0x7f0200f4

    goto :goto_0

    .line 311
    :pswitch_2
    if-eqz p0, :cond_2

    const v0, 0x7f0200ee

    goto :goto_0

    :cond_2
    const v0, 0x7f0200f8

    goto :goto_0

    .line 313
    :pswitch_3
    if-eqz p0, :cond_3

    const v0, 0x7f0200e5

    goto :goto_0

    :cond_3
    const v0, 0x7f0200f5

    goto :goto_0

    .line 315
    :pswitch_4
    if-eqz p0, :cond_4

    const v0, 0x7f0200e9

    goto :goto_0

    :cond_4
    const v0, 0x7f0200f6

    goto :goto_0

    .line 317
    :pswitch_5
    if-eqz p0, :cond_5

    const v0, 0x7f0200ed

    goto :goto_0

    :cond_5
    const v0, 0x7f0200f7

    goto :goto_0

    .line 319
    :pswitch_6
    if-eqz p0, :cond_6

    const v0, 0x7f0200eb

    goto :goto_0

    :cond_6
    const v0, 0x7f0200dc

    goto :goto_0

    .line 321
    :pswitch_7
    if-eqz p0, :cond_7

    const v0, 0x7f0200e3

    goto :goto_0

    :cond_7
    const v0, 0x7f0200d8

    goto :goto_0

    .line 323
    :pswitch_8
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 325
    :pswitch_9
    if-eqz p0, :cond_8

    const v0, 0x7f0200ec

    goto :goto_0

    :cond_8
    const v0, 0x7f0200dd

    goto :goto_0

    .line 327
    :pswitch_a
    if-eqz p0, :cond_9

    const v0, 0x7f0c0036

    goto :goto_0

    :cond_9
    const v0, 0x7f0200da

    goto :goto_0

    .line 329
    :pswitch_b
    if-nez p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 331
    :pswitch_c
    if-eqz p0, :cond_a

    const v0, 0x7f0200e0

    goto :goto_0

    :cond_a
    const v0, 0x7f0200de

    goto :goto_0

    .line 333
    :cond_b
    const v0, 0x7f0200d7

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_6
        :pswitch_9
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public static getBubbleColor()I
    .locals 1

    .prologue
    .line 338
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    packed-switch v0, :pswitch_data_0

    .line 352
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 340
    :pswitch_1
    const v0, -0xddddde

    goto :goto_0

    .line 346
    :pswitch_2
    const v0, -0xc8c3b9

    goto :goto_0

    .line 348
    :pswitch_3
    const v0, -0xc5dee4

    goto :goto_0

    .line 350
    :pswitch_4
    const/high16 v0, 0x60000000

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getDisplayName(Lcom/perm/kate/api/User;Lcom/perm/kate/api/Group;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Lcom/perm/kate/api/User;
    .param p1, "group"    # Lcom/perm/kate/api/Group;

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 358
    iget-object v1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 369
    :goto_0
    return-object v1

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "name":Ljava/lang/StringBuilder;
    if-nez p0, :cond_1

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public createNewView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 14
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "is_out"    # Z

    .prologue
    .line 221
    iget-boolean v9, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz v9, :cond_6

    const v4, 0x7f0300a6

    .line 222
    .local v4, "layout_item_id":I
    :goto_0
    iget-boolean v9, p0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    if-eqz v9, :cond_0

    if-eqz p2, :cond_0

    .line 223
    iget-boolean v9, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    if-eqz v9, :cond_9

    iget-boolean v9, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz v9, :cond_8

    const v4, 0x7f0300b0

    .line 224
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 225
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v9, 0x0

    invoke-virtual {v3, v4, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 226
    .local v8, "v":Landroid/view/View;
    iget-boolean v9, p0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    if-eqz v9, :cond_1

    if-nez p2, :cond_1

    .line 227
    const v9, 0x7f0e0076

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x3

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 231
    :cond_1
    iget-boolean v9, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz v9, :cond_3

    .line 232
    iget v9, p0, Lcom/perm/kate/MessageAdapterCore;->ava_margin:I

    int-to-double v10, v9

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    .line 233
    .local v5, "margin":I
    if-eqz p2, :cond_2

    iget-boolean v9, p0, Lcom/perm/kate/MessageAdapterCore;->useTwoItems:Z

    if-nez v9, :cond_a

    .line 234
    :cond_2
    const v9, 0x7f0e022d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 235
    .local v1, "container":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 236
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 249
    .end local v1    # "container":Landroid/view/View;
    .end local v5    # "margin":I
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_2
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-boolean v9, p0, Lcom/perm/kate/MessageAdapterCore;->showBubbles:Z

    if-eqz v9, :cond_5

    .line 250
    const v9, 0x7f0e022e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "bubble":Landroid/view/View;
    iget-object v9, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v9}, Lcom/perm/kate/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02005f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 254
    .local v2, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-static {}, Lcom/perm/kate/MessageAdapterCore;->getBubbleColor()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 257
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 258
    const/4 v9, 0x1

    const v10, -0x222223

    invoke-virtual {v2, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 263
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    sget-boolean v10, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v10, :cond_c

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    :goto_3
    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    invoke-static {v12, v13}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v12

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 272
    .end local v0    # "bubble":Landroid/view/View;
    .end local v2    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_5
    return-object v8

    .line 221
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "layout_item_id":I
    .end local v8    # "v":Landroid/view/View;
    :cond_6
    const v4, 0x7f0300a7

    goto/16 :goto_0

    :cond_7
    const v4, 0x7f0300a5

    goto/16 :goto_0

    .line 223
    .restart local v4    # "layout_item_id":I
    :cond_8
    const v4, 0x7f0300b1

    goto/16 :goto_1

    :cond_9
    const v4, 0x7f0300af

    goto/16 :goto_1

    .line 238
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "margin":I
    .restart local v8    # "v":Landroid/view/View;
    :cond_a
    const v9, 0x7f0e022e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 239
    .restart local v1    # "container":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    .restart local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v9, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v9, :cond_b

    const-wide v10, 0x4051800000000000L    # 70.0

    :goto_4
    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    .line 242
    .local v6, "negative":I
    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v9

    add-int v10, v6, v5

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_2

    .line 241
    .end local v6    # "negative":I
    :cond_b
    const-wide v10, 0x4049800000000000L    # 51.0

    goto :goto_4

    .line 266
    .end local v1    # "container":Landroid/view/View;
    .end local v5    # "margin":I
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v0    # "bubble":Landroid/view/View;
    .restart local v2    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_c
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    goto :goto_3
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 389
    iput-object v1, p0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    .line 390
    iget-object v0, p0, Lcom/perm/kate/MessageAdapterCore;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    .line 391
    iput-object v1, p0, Lcom/perm/kate/MessageAdapterCore;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 392
    return-void
.end method

.method public displayMessage(Lcom/perm/kate/api/User;Lcom/perm/kate/api/Message;Lcom/perm/kate/api/User;Landroid/view/View;Lcom/perm/utils/UserCache;)V
    .locals 37
    .param p1, "user"    # Lcom/perm/kate/api/User;
    .param p2, "message"    # Lcom/perm/kate/api/Message;
    .param p3, "me"    # Lcom/perm/kate/api/User;
    .param p4, "vi"    # Landroid/view/View;
    .param p5, "userCache"    # Lcom/perm/utils/UserCache;

    .prologue
    .line 65
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/perm/kate/api/Message;->is_out:Z

    move/from16 v28, v0

    .line 68
    .local v28, "is_out":Z
    move-object/from16 v24, p1

    .line 69
    .local v24, "current_user":Lcom/perm/kate/api/User;
    if-eqz v28, :cond_0

    .line 70
    move-object/from16 v24, p3

    .line 72
    :cond_0
    const v2, 0x7f0e021a

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 73
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/perm/kate/api/Message;->read_state:Z

    if-nez v2, :cond_10

    .line 74
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme2(Z)I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    :goto_0
    const v2, 0x7f0e01fe

    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/perm/kate/api/Message;->read_state:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 78
    const/16 v27, 0x0

    .line 79
    .local v27, "group":Lcom/perm/kate/api/Group;
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v8, v9}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->groupCache:Lcom/perm/utils/GroupCache;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-virtual {v2, v8, v9}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v27

    .line 81
    :cond_1
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/perm/kate/MessageAdapterCore;->getDisplayName(Lcom/perm/kate/api/User;Lcom/perm/kate/api/Group;)Ljava/lang/String;

    move-result-object v36

    .line 82
    .local v36, "user_name":Ljava/lang/String;
    const v2, 0x7f0e0118

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 83
    .local v4, "img_message_photo":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz v2, :cond_5

    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, "url_from_user":Ljava/lang/String;
    if-eqz v24, :cond_2

    .line 86
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 88
    :cond_2
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v8, v9}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v28, :cond_3

    .line 89
    if-eqz v27, :cond_3

    .line 90
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 92
    :cond_3
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 93
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 92
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/MessageAdapterCore;->hint:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    const v2, 0x7f0e022b

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    .line 96
    .local v29, "iv_online_status":Landroid/widget/ImageView;
    if-eqz v29, :cond_5

    .line 97
    if-eqz v24, :cond_11

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v30, 0x1

    .line 98
    .local v30, "online":Z
    :goto_1
    if-eqz v24, :cond_4

    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v8, v9}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    const/16 v30, 0x0

    .line 100
    :cond_4
    if-eqz v24, :cond_12

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v31, 0x1

    .line 101
    .local v31, "online_mobile":Z
    :goto_2
    if-eqz v30, :cond_13

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    if-eqz v31, :cond_14

    const v2, 0x7f02013f

    :goto_4
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .end local v3    # "url_from_user":Ljava/lang/String;
    .end local v29    # "iv_online_status":Landroid/widget/ImageView;
    .end local v30    # "online":Z
    .end local v31    # "online_mobile":Z
    :cond_5
    const v2, 0x7f0e0076

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 107
    .local v33, "tv_message_ago":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/perm/kate/api/Message;->date:J

    invoke-static {v2, v8, v9}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    .line 108
    .local v22, "ago_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/MessageAdapterCore;->showNames:Z

    if-eqz v2, :cond_6

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v28, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    const v6, 0x7f0701b9

    invoke-virtual {v2, v6}, Lcom/perm/kate/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 112
    :cond_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u2605"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 115
    :cond_7
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v2, 0x7f0e022c

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 119
    .local v25, "failed_icon":Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->states:Ljava/util/HashMap;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->states:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->states:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    .line 122
    .local v32, "state":Lcom/perm/kate/MessageSendQueue$MessageData$State;
    sget-object v2, Lcom/perm/kate/MessageSendQueue$MessageData$State;->ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_8

    .line 123
    const/16 v2, 0x8

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_8
    sget-object v2, Lcom/perm/kate/MessageSendQueue$MessageData$State;->SENDING:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_9

    .line 127
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    const v2, 0x7f0703e0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    :cond_9
    sget-object v2, Lcom/perm/kate/MessageSendQueue$MessageData$State;->QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_a

    .line 131
    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    const v2, 0x7f0700e4

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 136
    .end local v32    # "state":Lcom/perm/kate/MessageSendQueue$MessageData$State;
    :cond_a
    if-eqz v24, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "action_user":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/perm/kate/api/Message;->action:Ljava/lang/Integer;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/perm/kate/api/Message;->action_mid:Ljava/lang/Long;

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/perm/kate/api/Message;->uid:J

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/perm/kate/api/Message;->action_text:Ljava/lang/String;

    move-object/from16 v9, p5

    invoke-static/range {v6 .. v12}, Lcom/perm/kate/MessageAdapterCore;->getActionMessage(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/utils/UserCache;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 138
    .local v21, "action_message":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 139
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 141
    :cond_b
    const v2, 0x7f0e011f

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 142
    .local v34, "tv_message_body":Landroid/widget/TextView;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    if-eqz v2, :cond_17

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    .line 143
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    new-instance v23, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 146
    .local v23, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static/range {v23 .. v23}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v2, v5}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .end local v23    # "builder":Landroid/text/SpannableStringBuilder;
    :goto_7
    const v2, 0x7f0e01d2

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 154
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    .line 155
    .local v35, "uid":Ljava/lang/Long;
    if-eqz v28, :cond_c

    .line 157
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    .line 158
    :cond_c
    move-object/from16 v0, p4

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    const v2, 0x7f0e011a

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 161
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    if-eqz v2, :cond_d

    .line 162
    const v2, 0x7f0e0069

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 164
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/MessageAdapterCore;->show_ava:Z

    if-eqz v2, :cond_e

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v2, 0x7f0e026f

    move-object/from16 v0, v35

    invoke-virtual {v4, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 169
    :cond_e
    const v2, 0x7f0e011f

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 170
    const v2, 0x7f0e028f

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 173
    const v2, 0x7f0e0082

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 174
    .local v16, "photo_container":Landroid/view/ViewGroup;
    const v2, 0x7f0e0084

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 175
    .local v17, "links_container":Landroid/view/ViewGroup;
    const v2, 0x7f0e0086

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 176
    .local v18, "audio_container":Landroid/view/ViewGroup;
    const v2, 0x7f0e0087

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .line 177
    .local v19, "gift_container":Landroid/view/ViewGroup;
    const v2, 0x7f0e0083

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 178
    .local v20, "message_container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/MessageAdapterCore;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/perm/kate/MessageAdapterCore;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v8 .. v20}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 180
    const v2, 0x7f0e0097

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 181
    .local v26, "fl_select":Landroid/view/View;
    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->selectedMessages:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageAdapterCore;->selectedMessages:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/perm/kate/api/Message;->mid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_f
    return-void

    .line 76
    .end local v4    # "img_message_photo":Landroid/widget/ImageView;
    .end local v7    # "action_user":Ljava/lang/String;
    .end local v16    # "photo_container":Landroid/view/ViewGroup;
    .end local v17    # "links_container":Landroid/view/ViewGroup;
    .end local v18    # "audio_container":Landroid/view/ViewGroup;
    .end local v19    # "gift_container":Landroid/view/ViewGroup;
    .end local v20    # "message_container":Landroid/view/ViewGroup;
    .end local v21    # "action_message":Ljava/lang/String;
    .end local v22    # "ago_text":Ljava/lang/String;
    .end local v25    # "failed_icon":Landroid/view/View;
    .end local v26    # "fl_select":Landroid/view/View;
    .end local v27    # "group":Lcom/perm/kate/api/Group;
    .end local v33    # "tv_message_ago":Landroid/widget/TextView;
    .end local v34    # "tv_message_body":Landroid/widget/TextView;
    .end local v35    # "uid":Ljava/lang/Long;
    .end local v36    # "user_name":Ljava/lang/String;
    :cond_10
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme2(Z)I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 97
    .restart local v3    # "url_from_user":Ljava/lang/String;
    .restart local v4    # "img_message_photo":Landroid/widget/ImageView;
    .restart local v27    # "group":Lcom/perm/kate/api/Group;
    .restart local v29    # "iv_online_status":Landroid/widget/ImageView;
    .restart local v36    # "user_name":Ljava/lang/String;
    :cond_11
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 100
    .restart local v30    # "online":Z
    :cond_12
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 101
    .restart local v31    # "online_mobile":Z
    :cond_13
    const/4 v2, 0x4

    goto/16 :goto_3

    .line 102
    :cond_14
    const v2, 0x7f020148

    goto/16 :goto_4

    .end local v3    # "url_from_user":Ljava/lang/String;
    .end local v29    # "iv_online_status":Landroid/widget/ImageView;
    .end local v30    # "online":Z
    .end local v31    # "online_mobile":Z
    .restart local v22    # "ago_text":Ljava/lang/String;
    .restart local v33    # "tv_message_ago":Landroid/widget/TextView;
    :cond_15
    move-object/from16 v2, v36

    .line 109
    goto/16 :goto_5

    .line 136
    .restart local v25    # "failed_icon":Landroid/view/View;
    :cond_16
    const-string v7, ""

    goto/16 :goto_6

    .line 150
    .restart local v7    # "action_user":Ljava/lang/String;
    .restart local v21    # "action_message":Ljava/lang/String;
    .restart local v34    # "tv_message_body":Landroid/widget/TextView;
    :cond_17
    const/16 v2, 0x8

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 182
    .restart local v16    # "photo_container":Landroid/view/ViewGroup;
    .restart local v17    # "links_container":Landroid/view/ViewGroup;
    .restart local v18    # "audio_container":Landroid/view/ViewGroup;
    .restart local v19    # "gift_container":Landroid/view/ViewGroup;
    .restart local v20    # "message_container":Landroid/view/ViewGroup;
    .restart local v26    # "fl_select":Landroid/view/View;
    .restart local v35    # "uid":Ljava/lang/Long;
    :cond_18
    const/16 v2, 0x8

    goto :goto_8
.end method
