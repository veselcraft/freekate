.class public Lcom/perm/kate/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/MessageSender$MessageSenderCallback;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field attachments:Ljava/util/ArrayList;

.field attachments_objects:Ljava/util/ArrayList;

.field private callback:Lcom/perm/kate/session/Callback;

.field private callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

.field private chat_id:J

.field private forward_messages:Ljava/util/ArrayList;

.field group_id:J

.field private message_type:Ljava/lang/String;

.field payload:Ljava/lang/String;

.field sticker_id:Ljava/lang/Integer;

.field text:Ljava/lang/String;

.field private user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/MessageSender$MessageSenderCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p8

    move-object v2, p9

    move-object/from16 v3, p10

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 27
    iput-object v4, v0, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    .line 28
    iput-object v4, v0, Lcom/perm/kate/MessageSender;->attachments_objects:Ljava/util/ArrayList;

    .line 94
    new-instance v4, Lcom/perm/kate/MessageSender$2;

    iget-object v5, v0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/perm/kate/MessageSender$2;-><init>(Lcom/perm/kate/MessageSender;Landroid/app/Activity;)V

    iput-object v4, v0, Lcom/perm/kate/MessageSender;->callback:Lcom/perm/kate/session/Callback;

    move-object v4, p1

    .line 36
    iput-object v4, v0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    move-object v4, p2

    .line 37
    iput-object v4, v0, Lcom/perm/kate/MessageSender;->text:Ljava/lang/String;

    move-object v4, p3

    .line 38
    iput-object v4, v0, Lcom/perm/kate/MessageSender;->user_id:Ljava/lang/Long;

    move-wide v4, p4

    .line 39
    iput-wide v4, v0, Lcom/perm/kate/MessageSender;->chat_id:J

    move-object v4, p6

    .line 40
    iput-object v4, v0, Lcom/perm/kate/MessageSender;->message_type:Ljava/lang/String;

    move-object v4, p7

    .line 41
    iput-object v4, v0, Lcom/perm/kate/MessageSender;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    if-eqz v1, :cond_0

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    :cond_0
    if-eqz v2, :cond_1

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/perm/kate/MessageSender;->attachments_objects:Ljava/util/ArrayList;

    :cond_1
    if-eqz v3, :cond_2

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/perm/kate/MessageSender;->forward_messages:Ljava/util/ArrayList;

    :cond_2
    move-object/from16 v1, p11

    .line 51
    iput-object v1, v0, Lcom/perm/kate/MessageSender;->sticker_id:Ljava/lang/Integer;

    move-wide/from16 v1, p12

    .line 52
    iput-wide v1, v0, Lcom/perm/kate/MessageSender;->group_id:J

    move-object/from16 v1, p14

    .line 53
    iput-object v1, v0, Lcom/perm/kate/MessageSender;->payload:Ljava/lang/String;

    .line 54
    iget-object v1, v0, Lcom/perm/kate/MessageSender;->callback:Lcom/perm/kate/session/Callback;

    iget-object v2, v0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageSender;)Ljava/lang/Long;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/MessageSender;->user_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/MessageSender;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/perm/kate/MessageSender;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/MessageSender;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/MessageSender;->message_type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/MessageSender;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/MessageSender;->forward_messages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/MessageSender;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/MessageSender;)Landroid/app/Activity;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/MessageSender;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/MessageSender;Ljava/lang/String;)Lcom/perm/kate/api/Message;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageSender;->recreateMessage(Ljava/lang/String;)Lcom/perm/kate/api/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/MessageSender;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/MessageSender;->destroy()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/MessageSender;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/MessageSender;->showStickerDisabledAlert()V

    return-void
.end method

.method private destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/perm/kate/MessageSender;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    .line 195
    iput-object v0, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    return-void
.end method

.method private recreateMessage(Ljava/lang/String;)Lcom/perm/kate/api/Message;
    .locals 6

    .line 170
    new-instance v0, Lcom/perm/kate/api/Message;

    invoke-direct {v0}, Lcom/perm/kate/api/Message;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/perm/kate/MessageSender;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/perm/kate/MessageSender;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 174
    iget-wide v1, p0, Lcom/perm/kate/MessageSender;->chat_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 175
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Message;->uid:J

    :cond_0
    const/4 v1, 0x1

    .line 176
    iput-boolean v1, v0, Lcom/perm/kate/api/Message;->is_out:Z

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/perm/utils/TimeFix;->unfix(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Message;->date:J

    .line 179
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Message;->mid:J

    .line 180
    iget-wide v1, p0, Lcom/perm/kate/MessageSender;->chat_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 181
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 182
    iget-object p1, p0, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessageSender;->attachments_objects:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/MessageSender;->sticker_id:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/perm/kate/MessageSender;->forward_messages:Ljava/util/ArrayList;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/perm/kate/MessageSendQueue;->fillAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/api/Message;Ljava/lang/Integer;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static sendMessagesBroadcast()V
    .locals 2

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.intent.action.new_messages"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showStickerDisabledAlert()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    .line 144
    new-instance v1, Lcom/perm/kate/MessageSender$3;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/MessageSender$3;-><init>(Lcom/perm/kate/MessageSender;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public sendMessage(Lcom/perm/kate/session/Session;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->text:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->forward_messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->sticker_id:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 62
    iget-object p1, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_2

    const v0, 0x7f0f033c

    .line 63
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;Landroid/app/Activity;)V

    :cond_2
    return-void

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    if-eqz v0, :cond_4

    .line 67
    invoke-interface {v0}, Lcom/perm/kate/MessageSender$MessageSenderCallback;->start()V

    .line 68
    :cond_4
    new-instance v0, Lcom/perm/kate/MessageSender$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/MessageSender$1;-><init>(Lcom/perm/kate/MessageSender;Lcom/perm/kate/session/Session;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
