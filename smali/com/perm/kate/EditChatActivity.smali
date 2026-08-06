.class public Lcom/perm/kate/EditChatActivity;
.super Lcom/perm/kate/BaseActivity;
.source "EditChatActivity.java"


# instance fields
.field private account_id:J

.field private adapter:Lcom/perm/kate/ChatMembersAdapter;

.field private add_member_click_listener:Landroid/view/View$OnClickListener;

.field private add_member_listener:Lcom/perm/kate/session/Callback;

.field private btn_add_member:Landroid/widget/Button;

.field private btn_change_photo:Landroid/widget/Button;

.field private btn_chat_edit:Landroid/widget/Button;

.field private btn_disable_notification:Landroid/widget/Button;

.field private btn_return_to_conversation:Landroid/widget/Button;

.field private callback_users:Lcom/perm/kate/session/Callback;

.field private change_photo_click_listener:Landroid/view/View$OnClickListener;

.field private chat_callback:Lcom/perm/kate/session/Callback;

.field private chat_edit_callback:Lcom/perm/kate/session/Callback;

.field private chat_edit_click_listener:Landroid/view/View$OnClickListener;

.field private chat_id:J

.field private delete_chat_photo_listener:Lcom/perm/kate/session/Callback;

.field private disable_notification_click_listener:Landroid/view/View$OnClickListener;

.field private has_chat_photo:Z

.field private header_text:Landroid/widget/TextView;

.field private ll_buttons:Landroid/widget/LinearLayout;

.field private ll_buttons2:Landroid/widget/LinearLayout;

.field private lv_members_list:Landroid/widget/ListView;

.field private member_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private return_to_conversation_click_listener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;

.field private tv_chat_name:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/EditChatActivity;->has_chat_photo:Z

    .line 161
    new-instance v0, Lcom/perm/kate/EditChatActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$2;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->callback_users:Lcom/perm/kate/session/Callback;

    .line 201
    new-instance v0, Lcom/perm/kate/EditChatActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$5;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->chat_callback:Lcom/perm/kate/session/Callback;

    .line 216
    new-instance v0, Lcom/perm/kate/EditChatActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$6;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->chat_edit_click_listener:Landroid/view/View$OnClickListener;

    .line 251
    new-instance v0, Lcom/perm/kate/EditChatActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$9;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->add_member_click_listener:Landroid/view/View$OnClickListener;

    .line 286
    new-instance v0, Lcom/perm/kate/EditChatActivity$11;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$11;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->chat_edit_callback:Lcom/perm/kate/session/Callback;

    .line 322
    new-instance v0, Lcom/perm/kate/EditChatActivity$14;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$14;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->add_member_listener:Lcom/perm/kate/session/Callback;

    .line 334
    new-instance v0, Lcom/perm/kate/EditChatActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$15;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->member_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 351
    new-instance v0, Lcom/perm/kate/EditChatActivity$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$16;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->disable_notification_click_listener:Landroid/view/View$OnClickListener;

    .line 382
    new-instance v0, Lcom/perm/kate/EditChatActivity$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$18;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->return_to_conversation_click_listener:Landroid/view/View$OnClickListener;

    .line 390
    new-instance v0, Lcom/perm/kate/EditChatActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$19;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->change_photo_click_listener:Landroid/view/View$OnClickListener;

    .line 427
    new-instance v0, Lcom/perm/kate/EditChatActivity$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$21;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 438
    new-instance v0, Lcom/perm/kate/EditChatActivity$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$22;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 463
    new-instance v0, Lcom/perm/kate/EditChatActivity$24;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$24;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->delete_chat_photo_listener:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/EditChatActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/perm/kate/EditChatActivity;->account_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->chatEdit()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->chat_edit_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->errorEditChatName()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->getChatName()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->add_member_listener:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->refreshInThread()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/EditChatActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/EditChatActivity;->showProfile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->disableChatNotification()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->updateDisableNotificationButton()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/EditChatActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/EditChatActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/EditChatActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->lv_members_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/perm/kate/EditChatActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->ll_buttons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/perm/kate/EditChatActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->ll_buttons2:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->deleteChatPhoto()V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/EditChatActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/perm/kate/EditChatActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->getChatInThread()V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->delete_chat_photo_listener:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->showYouAreLeftTheConversation()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->showMembers()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->chat_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/perm/kate/EditChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/perm/kate/EditChatActivity;->has_chat_photo:Z

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->showEditDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/EditChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/perm/kate/EditChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/perm/kate/EditChatActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->tv_chat_name:Landroid/widget/TextView;

    return-object v0
.end method

.method private addMemberToChat(J)V
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 312
    new-instance v0, Lcom/perm/kate/EditChatActivity$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/EditChatActivity$13;-><init>(Lcom/perm/kate/EditChatActivity;J)V

    .line 317
    invoke-virtual {v0}, Lcom/perm/kate/EditChatActivity$13;->start()V

    .line 318
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->createChatMember(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 319
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->showMembers()V

    .line 320
    return-void
.end method

.method private chatEdit()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/perm/kate/EditChatActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$10;-><init>(Lcom/perm/kate/EditChatActivity;)V

    .line 283
    invoke-virtual {v0}, Lcom/perm/kate/EditChatActivity$10;->start()V

    .line 284
    return-void
.end method

.method private deleteChatPhoto()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->showProgressBar(Z)V

    .line 455
    new-instance v0, Lcom/perm/kate/EditChatActivity$23;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$23;-><init>(Lcom/perm/kate/EditChatActivity;)V

    .line 460
    invoke-virtual {v0}, Lcom/perm/kate/EditChatActivity$23;->start()V

    .line 461
    return-void
.end method

.method private disableChatNotification()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 360
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v4, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/perm/utils/ChatNotificationsHelper;->isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v6

    .line 361
    .local v6, "is_disabled":Z
    if-nez v6, :cond_0

    const/4 v6, 0x1

    .line 362
    :goto_0
    iget-wide v4, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/perm/utils/ChatNotificationsHelper;->setDisabledChat(Landroid/content/Context;JJZ)V

    .line 363
    if-eqz v6, :cond_1

    const v0, 0x7f0704ab

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 364
    return-void

    .line 361
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 363
    :cond_1
    const v0, 0x7f0704b1

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 450
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/EditChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 451
    return-void
.end method

.method private errorEditChatName()V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/perm/kate/EditChatActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$12;-><init>(Lcom/perm/kate/EditChatActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method private getChatInThread()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/perm/kate/EditChatActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$4;-><init>(Lcom/perm/kate/EditChatActivity;)V

    .line 198
    invoke-virtual {v0}, Lcom/perm/kate/EditChatActivity$4;->start()V

    .line 199
    return-void
.end method

.method private getChatName()V
    .locals 6

    .prologue
    .line 142
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    iget-wide v4, p0, Lcom/perm/kate/EditChatActivity;->account_id:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 143
    .local v0, "chat_name":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->tv_chat_name:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    return-void
.end method

.method private prepareHeader()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->setHeaderText(I)V

    .line 108
    return-void
.end method

.method private refresh()V
    .locals 7

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->showProgressBar(Z)V

    .line 158
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    const-string v4, "online, photo_100"

    iget-object v5, p0, Lcom/perm/kate/EditChatActivity;->callback_users:Lcom/perm/kate/session/Callback;

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->getChatUsers(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 159
    return-void
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/perm/kate/EditChatActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$1;-><init>(Lcom/perm/kate/EditChatActivity;)V

    .line 153
    invoke-virtual {v0}, Lcom/perm/kate/EditChatActivity$1;->start()V

    .line 154
    return-void
.end method

.method private showEditDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 224
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 225
    .local v3, "factory":Landroid/view/LayoutInflater;
    const v5, 0x7f030061

    invoke-virtual {v3, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, "captcha_view":Landroid/view/View;
    const v5, 0x7f0e00f1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 227
    .local v2, "et_message":Landroid/widget/EditText;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v5, 0x7f070407

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07051d

    new-instance v7, Lcom/perm/kate/EditChatActivity$7;

    invoke-direct {v7, p0, v2}, Lcom/perm/kate/EditChatActivity$7;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/widget/EditText;)V

    .line 229
    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070319

    .line 236
    invoke-virtual {v5, v6, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 239
    iget-object v5, p0, Lcom/perm/kate/EditChatActivity;->tv_chat_name:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "old_chat_name":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 242
    new-instance v5, Lcom/perm/kate/EditChatActivity$8;

    invoke-direct {v5, p0, v2}, Lcom/perm/kate/EditChatActivity$8;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/widget/EditText;)V

    const-wide/16 v6, 0x14

    invoke-virtual {v2, v5, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method

.method private showMembers()V
    .locals 6

    .prologue
    .line 128
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchChatFullMembers(J)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->members:Ljava/util/ArrayList;

    .line 129
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->members:Ljava/util/ArrayList;

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/EditChatActivity;->account_id:J

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->setHeaderText(I)V

    .line 131
    new-instance v1, Lcom/perm/kate/ChatMembersAdapter;

    iget-object v2, p0, Lcom/perm/kate/EditChatActivity;->members:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    invoke-direct {v1, v2, p0, v4, v5}, Lcom/perm/kate/ChatMembersAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;J)V

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->adapter:Lcom/perm/kate/ChatMembersAdapter;

    .line 132
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->lv_members_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/EditChatActivity;->adapter:Lcom/perm/kate/ChatMembersAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->getChatName()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 136
    invoke-virtual {p0}, Lcom/perm/kate/EditChatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "user_id"    # Ljava/lang/String;
    .param p2, "user_name"    # Ljava/lang/String;

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 346
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "com.perm.kate.user_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 349
    return-void
.end method

.method private showYouAreLeftTheConversation()V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Lcom/perm/kate/EditChatActivity$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$17;-><init>(Lcom/perm/kate/EditChatActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method

.method private updateDisableNotificationButton()V
    .locals 4

    .prologue
    .line 367
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/perm/utils/ChatNotificationsHelper;->isDisabledChat(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    .line 368
    .local v0, "is_disabled":Z
    iget-object v2, p0, Lcom/perm/kate/EditChatActivity;->btn_disable_notification:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const v1, 0x7f070196

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    .line 369
    return-void

    .line 368
    :cond_0
    const v1, 0x7f070189

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    .line 264
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 265
    const-string v0, "uris"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 266
    .local v8, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v0, "resize_option"

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 267
    .local v3, "resize_option":I
    const-string v0, "rotate"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 268
    .local v5, "rotate":I
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v4, p0, Lcom/perm/kate/EditChatActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/photoupload/AvatarUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;I)V

    iget-wide v10, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    invoke-virtual {v0, v10, v11}, Lcom/perm/kate/photoupload/AvatarUploader;->uploadForChat(J)V

    .line 270
    .end local v3    # "resize_option":I
    .end local v5    # "rotate":I
    .end local v8    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 271
    const-string v0, "com.perm.kate.member_id"

    const-wide/16 v10, 0x0

    invoke-virtual {p3, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 272
    .local v6, "member_id":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    .line 273
    invoke-direct {p0, v6, v7}, Lcom/perm/kate/EditChatActivity;->addMemberToChat(J)V

    .line 275
    .end local v6    # "member_id":J
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f03003b

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->setContentView(I)V

    .line 63
    const v1, 0x7f07018f

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->setTitle(I)V

    .line 64
    invoke-virtual {p0}, Lcom/perm/kate/EditChatActivity;->setButtonsBg()V

    .line 65
    invoke-virtual {p0}, Lcom/perm/kate/EditChatActivity;->setButtonsBg2()V

    .line 66
    const v1, 0x7f0e01f6

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0e00c8

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->lv_members_list:Landroid/widget/ListView;

    .line 68
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->lv_members_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/EditChatActivity;->member_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    const v1, 0x7f0e00c9

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->ll_buttons:Landroid/widget/LinearLayout;

    .line 70
    const v1, 0x7f0e00d1

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->ll_buttons2:Landroid/widget/LinearLayout;

    .line 71
    const v1, 0x7f0e00ca

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->tv_chat_name:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f0e00cb

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->btn_chat_edit:Landroid/widget/Button;

    .line 73
    const v1, 0x7f0e00d0

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->btn_add_member:Landroid/widget/Button;

    .line 74
    const v1, 0x7f0e00ce

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->btn_disable_notification:Landroid/widget/Button;

    .line 75
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->btn_chat_edit:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/EditChatActivity;->chat_edit_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->btn_add_member:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/EditChatActivity;->add_member_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->btn_disable_notification:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/EditChatActivity;->disable_notification_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f0e00d3

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->btn_return_to_conversation:Landroid/widget/Button;

    .line 79
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->btn_return_to_conversation:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/EditChatActivity;->return_to_conversation_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f0e00cd

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/EditChatActivity;->btn_change_photo:Landroid/widget/Button;

    .line 81
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->btn_change_photo:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/EditChatActivity;->change_photo_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/perm/kate/EditChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.chat_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    .line 83
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/EditChatActivity;->account_id:J

    .line 84
    iget-wide v2, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/perm/kate/EditChatActivity;->finish()V

    .line 86
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->updateDisableNotificationButton()V

    .line 87
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->prepareHeader()V

    .line 88
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->showMembers()V

    .line 89
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->refreshInThread()V

    .line 90
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->getChatInThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public requeryOnUiThread()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/perm/kate/EditChatActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$3;-><init>(Lcom/perm/kate/EditChatActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method protected setButtonsBg2()V
    .locals 2

    .prologue
    .line 99
    sget-boolean v1, Lcom/perm/kate/EditChatActivity;->IsCustomTheme:Z

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const v1, 0x7f0e00cc

    invoke-virtual {p0, v1}, Lcom/perm/kate/EditChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "fl_button_bg5":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setHeaderText(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const v4, 0x7f070418

    const/4 v2, 0x1

    .line 111
    if-gez p1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    return-void

    .line 114
    :cond_0
    rem-int/lit8 v0, p1, 0xa

    .line 115
    .local v0, "units":I
    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    const/16 v1, 0x15

    if-ge p1, v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/perm/kate/EditChatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    :cond_1
    if-ne v0, v2, :cond_2

    .line 118
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f070419

    invoke-virtual {p0, v3}, Lcom/perm/kate/EditChatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_2
    if-le v0, v2, :cond_3

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f07041a

    invoke-virtual {p0, v3}, Lcom/perm/kate/EditChatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/perm/kate/EditChatActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public showRequestPhotoDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0700b4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0700b3

    invoke-direct {v3, v4, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-boolean v3, p0, Lcom/perm/kate/EditChatActivity;->has_chat_photo:Z

    if-eqz v3, :cond_0

    .line 402
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070183

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_0
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/EditChatActivity$20;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/EditChatActivity$20;-><init>(Lcom/perm/kate/EditChatActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 422
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 423
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 424
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 425
    return-void
.end method
