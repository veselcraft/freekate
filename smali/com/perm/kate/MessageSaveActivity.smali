.class public Lcom/perm/kate/MessageSaveActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MessageSaveActivity.java"


# instance fields
.field callback_messages:Lcom/perm/kate/session/Callback;

.field chat_id:J

.field private closeClick:Landroid/view/View$OnClickListener;

.field fileEditText:Landroid/widget/EditText;

.field format:Ljava/text/DateFormat;

.field me:Lcom/perm/kate/api/User;

.field offset:J

.field out:Ljava/io/Writer;

.field page_size:I

.field pathEditText:Landroid/widget/EditText;

.field private startClick:Landroid/view/View$OnClickListener;

.field stop:Z

.field userCache:Lcom/perm/utils/UserCache;

.field user_id:J

.field view1:Landroid/view/View;

.field view2:Landroid/view/View;

.field view3:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 31
    const/16 v0, 0xc8

    iput v0, p0, Lcom/perm/kate/MessageSaveActivity;->page_size:I

    .line 37
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageSaveActivity;->userCache:Lcom/perm/utils/UserCache;

    .line 38
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessageSaveActivity;->me:Lcom/perm/kate/api/User;

    .line 39
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessageSaveActivity;->format:Ljava/text/DateFormat;

    .line 91
    new-instance v0, Lcom/perm/kate/MessageSaveActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageSaveActivity$1;-><init>(Lcom/perm/kate/MessageSaveActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageSaveActivity;->startClick:Landroid/view/View$OnClickListener;

    .line 134
    new-instance v0, Lcom/perm/kate/MessageSaveActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/MessageSaveActivity$3;-><init>(Lcom/perm/kate/MessageSaveActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageSaveActivity;->callback_messages:Lcom/perm/kate/session/Callback;

    .line 185
    new-instance v0, Lcom/perm/kate/MessageSaveActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageSaveActivity$5;-><init>(Lcom/perm/kate/MessageSaveActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageSaveActivity;->closeClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageSaveActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageSaveActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/perm/kate/MessageSaveActivity;->displayErrorState()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MessageSaveActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageSaveActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageSaveActivity;->saveMessages(Ljava/util/ArrayList;)V

    return-void
.end method

.method private displayErrorState()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/perm/kate/MessageSaveActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageSaveActivity$7;-><init>(Lcom/perm/kate/MessageSaveActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageSaveActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method private getDefaultFileName()Ljava/lang/String;
    .locals 12

    .prologue
    .line 71
    const-string v6, "messages"

    .line 73
    .local v6, "title":Ljava/lang/String;
    :try_start_0
    iget-wide v8, p0, Lcom/perm/kate/MessageSaveActivity;->chat_id:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 74
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v8}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 75
    .local v2, "account_id":J
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v10, p0, Lcom/perm/kate/MessageSaveActivity;->chat_id:J

    invoke-virtual {v8, v10, v11, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2    # "account_id":J
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 76
    :cond_1
    :try_start_1
    iget-wide v8, p0, Lcom/perm/kate/MessageSaveActivity;->user_id:J

    invoke-static {v8, v9}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 77
    iget-object v8, p0, Lcom/perm/kate/MessageSaveActivity;->userCache:Lcom/perm/utils/UserCache;

    iget-wide v10, p0, Lcom/perm/kate/MessageSaveActivity;->user_id:J

    invoke-virtual {v8, v10, v11}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v7

    .line 78
    .local v7, "u":Lcom/perm/kate/api/User;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v7, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 79
    goto :goto_0

    .line 80
    .end local v7    # "u":Lcom/perm/kate/api/User;
    :cond_2
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v10, p0, Lcom/perm/kate/MessageSaveActivity;->user_id:J

    invoke-static {v10, v11}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v4

    .line 81
    .local v4, "g":Lcom/perm/kate/api/Group;
    if-eqz v4, :cond_0

    .line 82
    iget-object v6, v4, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    .end local v4    # "g":Lcom/perm/kate/api/Group;
    :catch_0
    move-exception v5

    .line 85
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getMissingUsersFromForwardedMessages(Lcom/perm/kate/api/Message;)V
    .locals 6
    .param p1, "m"    # Lcom/perm/kate/api/Message;

    .prologue
    .line 255
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 256
    .local v1, "users_in_response":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iget-object v2, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 257
    .local v0, "att":Lcom/perm/kate/api/Attachment;
    iget-object v3, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    iget-wide v4, v3, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 260
    return-void
.end method

.method private saveMessage(Lcom/perm/kate/api/Message;Ljava/lang/String;)V
    .locals 12
    .param p1, "m"    # Lcom/perm/kate/api/Message;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-boolean v3, p1, Lcom/perm/kate/api/Message;->is_out:Z

    if-eqz v3, :cond_6

    .line 205
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity;->me:Lcom/perm/kate/api/User;

    .line 208
    .local v2, "u":Lcom/perm/kate/api/User;
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    invoke-virtual {v3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 209
    if-eqz v2, :cond_0

    .line 210
    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

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

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/MessageSaveActivity;->format:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    iget-wide v8, p1, Lcom/perm/kate/api/Message;->date:J

    invoke-static {v8, v9}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 212
    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 213
    iget-object v3, p1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lcom/perm/kate/MessageSaveActivity;->getMissingUsersFromForwardedMessages(Lcom/perm/kate/api/Message;)V

    .line 220
    iget-object v3, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 221
    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f070458

    invoke-virtual {p0, v5}, Lcom/perm/kate/MessageSaveActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 222
    :cond_2
    iget-object v3, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 223
    .local v0, "att":Lcom/perm/kate/api/Attachment;
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "posted_photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 224
    :cond_4
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v1, v4, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 225
    .local v1, "src":Ljava/lang/String;
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 226
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v1, v4, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    .line 227
    :cond_5
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "http://vk.com/photo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v6, v6, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v6, v6, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    .end local v1    # "src":Ljava/lang/String;
    .end local v2    # "u":Lcom/perm/kate/api/User;
    :cond_6
    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity;->userCache:Lcom/perm/utils/UserCache;

    iget-wide v4, p1, Lcom/perm/kate/api/Message;->uid:J

    invoke-virtual {v3, v4, v5}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v2

    .restart local v2    # "u":Lcom/perm/kate/api/User;
    goto/16 :goto_0

    .line 229
    .restart local v0    # "att":Lcom/perm/kate/api/Attachment;
    :cond_7
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 230
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "http://vk.com/video"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v6, v6, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v6, v6, Lcom/perm/kate/api/Video;->vid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-object v6, v6, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 231
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 232
    :cond_8
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "doc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 233
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "http://vk.com/doc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v6, v6, Lcom/perm/kate/api/Document;->owner_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v6, v6, Lcom/perm/kate/api/Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v6, v6, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 234
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 235
    :cond_9
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 236
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "http://vk.com/audio?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&audio_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v6, v6, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v6, v6, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 237
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 238
    :cond_a
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "gift"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 239
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    iget-object v6, v6, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 241
    :cond_b
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "geo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 242
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f07037c

    invoke-virtual {p0, v6}, Lcom/perm/kate/MessageSaveActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 244
    :cond_c
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "wall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 245
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "http://vk.com/wall"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v6, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v6, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 247
    :cond_d
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "message"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 248
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/perm/kate/MessageSaveActivity;->saveMessage(Lcom/perm/kate/api/Message;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 250
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    :cond_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 251
    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 252
    :cond_f
    return-void
.end method

.method private saveMessages(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 264
    .local v0, "m":Lcom/perm/kate/api/Message;
    const-string v2, ""

    invoke-direct {p0, v0, v2}, Lcom/perm/kate/MessageSaveActivity;->saveMessage(Lcom/perm/kate/api/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .end local v0    # "m":Lcom/perm/kate/api/Message;
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 266
    return-void
.end method


# virtual methods
.method displayProgressText()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/perm/kate/MessageSaveActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageSaveActivity$6;-><init>(Lcom/perm/kate/MessageSaveActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageSaveActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f0300a9

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageSaveActivity;->setContentView(I)V

    .line 48
    const v1, 0x7f07024c

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageSaveActivity;->setHeaderTitle(I)V

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/MessageSaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/MessageSaveActivity;->chat_id:J

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/MessageSaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/MessageSaveActivity;->user_id:J

    .line 53
    const v1, 0x7f0e0027

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity;->startClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f0e0081

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity;->closeClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/KateMessages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "dir":Ljava/lang/String;
    const v1, 0x7f0e0234

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/MessageSaveActivity;->pathEditText:Landroid/widget/EditText;

    .line 58
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity;->pathEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v1, 0x7f0e0236

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/MessageSaveActivity;->fileEditText:Landroid/widget/EditText;

    .line 61
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity;->fileEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/perm/kate/MessageSaveActivity;->getDefaultFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v1, 0x7f0e0231

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MessageSaveActivity;->view1:Landroid/view/View;

    .line 64
    const v1, 0x7f0e0237

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MessageSaveActivity;->view2:Landroid/view/View;

    .line 65
    const v1, 0x7f0e023a

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    .line 67
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity;->view1:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method showView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 176
    new-instance v0, Lcom/perm/kate/MessageSaveActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/MessageSaveActivity$4;-><init>(Lcom/perm/kate/MessageSaveActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageSaveActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method protected start()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/perm/kate/MessageSaveActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageSaveActivity$2;-><init>(Lcom/perm/kate/MessageSaveActivity;)V

    .line 131
    invoke-virtual {v0}, Lcom/perm/kate/MessageSaveActivity$2;->start()V

    .line 132
    return-void
.end method
