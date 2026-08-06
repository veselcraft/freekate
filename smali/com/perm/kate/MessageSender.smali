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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field attachments_objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/perm/kate/session/Callback;

.field private callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

.field private chat_id:J

.field private forward_messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field group_id:J

.field private message_type:Ljava/lang/String;

.field sticker_id:Ljava/lang/Integer;

.field text:Ljava/lang/String;

.field private user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/MessageSender$MessageSenderCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/Long;
    .param p4, "chat_id"    # J
    .param p6, "mt"    # Ljava/lang/String;
    .param p7, "cb"    # Lcom/perm/kate/MessageSender$MessageSenderCallback;
    .param p11, "sticker_id"    # Ljava/lang/Integer;
    .param p12, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "J",
            "Ljava/lang/String;",
            "Lcom/perm/kate/MessageSender$MessageSenderCallback;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p8, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p9, "attachments_objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p10, "forward_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    .line 28
    iput-object v0, p0, Lcom/perm/kate/MessageSender;->attachments_objects:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/perm/kate/MessageSender$2;

    iget-object v1, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MessageSender$2;-><init>(Lcom/perm/kate/MessageSender;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageSender;->callback:Lcom/perm/kate/session/Callback;

    .line 35
    iput-object p1, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lcom/perm/kate/MessageSender;->text:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/perm/kate/MessageSender;->user_id:Ljava/lang/Long;

    .line 38
    iput-wide p4, p0, Lcom/perm/kate/MessageSender;->chat_id:J

    .line 39
    iput-object p6, p0, Lcom/perm/kate/MessageSender;->message_type:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/perm/kate/MessageSender;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    .line 42
    if-eqz p8, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    .line 45
    :cond_0
    if-eqz p9, :cond_1

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/MessageSender;->attachments_objects:Ljava/util/ArrayList;

    .line 48
    :cond_1
    if-eqz p10, :cond_2

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/MessageSender;->forward_messages:Ljava/util/ArrayList;

    .line 50
    :cond_2
    iput-object p11, p0, Lcom/perm/kate/MessageSender;->sticker_id:Ljava/lang/Integer;

    .line 51
    iput-wide p12, p0, Lcom/perm/kate/MessageSender;->group_id:J

    .line 52
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->callback:Lcom/perm/kate/session/Callback;

    iget-object v1, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageSender;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageSender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->user_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/MessageSender;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/MessageSender;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/perm/kate/MessageSender;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/MessageSender;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageSender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->message_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/MessageSender;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageSender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->forward_messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageSender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/MessageSender;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageSender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/MessageSender;)Lcom/perm/kate/MessageSender$MessageSenderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageSender;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/MessageSender;Ljava/lang/String;)Lcom/perm/kate/api/Message;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageSender;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageSender;->recreateMessage(Ljava/lang/String;)Lcom/perm/kate/api/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/MessageSender;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageSender;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/MessageSender;->destroy()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/MessageSender;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageSender;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/MessageSender;->showStickerDisabledAlert()V

    return-void
.end method

.method private destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/perm/kate/MessageSender;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    .line 187
    iput-object v0, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    .line 188
    return-void
.end method

.method private recreateMessage(Ljava/lang/String;)Lcom/perm/kate/api/Message;
    .locals 6
    .param p1, "message_id"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Lcom/perm/kate/api/Message;

    invoke-direct {v0}, Lcom/perm/kate/api/Message;-><init>()V

    .line 163
    .local v0, "m":Lcom/perm/kate/api/Message;
    iget-object v1, p0, Lcom/perm/kate/MessageSender;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/perm/kate/MessageSender;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 166
    iget-wide v2, p0, Lcom/perm/kate/MessageSender;->chat_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Message;->uid:J

    .line 168
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/api/Message;->is_out:Z

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/perm/utils/TimeFix;->unfix(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Message;->date:J

    .line 171
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Message;->mid:J

    .line 172
    iget-wide v2, p0, Lcom/perm/kate/MessageSender;->chat_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 173
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 174
    iget-object v1, p0, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/MessageSender;->attachments_objects:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/MessageSender;->sticker_id:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/perm/kate/MessageSender;->forward_messages:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/perm/kate/MessageSendQueue;->fillAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/api/Message;Ljava/lang/Integer;Ljava/util/ArrayList;)V

    .line 175
    return-object v0
.end method

.method public static sendMessagesBroadcast()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.perm.kate.intent.action.new_messages"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method private showStickerDisabledAlert()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    .line 136
    .local v0, "a":Landroid/app/Activity;
    iget-object v1, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/perm/kate/MessageSender$3;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/MessageSender$3;-><init>(Lcom/perm/kate/MessageSender;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method


# virtual methods
.method public sendMessage(Lcom/perm/kate/session/Session;)V
    .locals 2
    .param p1, "session"    # Lcom/perm/kate/session/Session;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->text:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/MessageSender;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->forward_messages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/MessageSender;->forward_messages:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->sticker_id:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    const v1, 0x7f0702df

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessageSender;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;Landroid/app/Activity;)V

    .line 88
    :cond_2
    :goto_0
    return-void

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/perm/kate/MessageSender;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    invoke-interface {v0}, Lcom/perm/kate/MessageSender$MessageSenderCallback;->start()V

    .line 66
    :cond_4
    new-instance v0, Lcom/perm/kate/MessageSender$1;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/MessageSender$1;-><init>(Lcom/perm/kate/MessageSender;Lcom/perm/kate/session/Session;)V

    .line 87
    invoke-virtual {v0}, Lcom/perm/kate/MessageSender$1;->start()V

    goto :goto_0
.end method
