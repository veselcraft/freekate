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

.field private btn_return_to_conversation:Landroid/widget/Button;

.field private callback_invite_link:Lcom/perm/kate/session/Callback;

.field private callback_users:Lcom/perm/kate/session/Callback;

.field private change_photo_click_listener:Landroid/view/View$OnClickListener;

.field private chat_callback:Lcom/perm/kate/session/Callback;

.field private chat_edit_callback:Lcom/perm/kate/session/Callback;

.field private chat_edit_click_listener:Landroid/view/View$OnClickListener;

.field private chat_id:J

.field private delete_chat_photo_listener:Lcom/perm/kate/session/Callback;

.field private group_id:J

.field private has_chat_photo:Z

.field private header_text:Landroid/widget/TextView;

.field private is_admin:Z

.field private ll_buttons:Landroid/widget/LinearLayout;

.field private ll_buttons2:Landroid/widget/LinearLayout;

.field private lv_members_list:Landroid/widget/ListView;

.field private member_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private members:Ljava/util/ArrayList;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private return_to_conversation_click_listener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;

.field private tv_chat_name:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/perm/kate/EditChatActivity;->has_chat_photo:Z

    .line 61
    iput-boolean v0, p0, Lcom/perm/kate/EditChatActivity;->is_admin:Z

    .line 168
    new-instance v0, Lcom/perm/kate/EditChatActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$2;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->callback_users:Lcom/perm/kate/session/Callback;

    .line 247
    new-instance v0, Lcom/perm/kate/EditChatActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$5;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->chat_callback:Lcom/perm/kate/session/Callback;

    .line 264
    new-instance v0, Lcom/perm/kate/EditChatActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$6;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->chat_edit_click_listener:Landroid/view/View$OnClickListener;

    .line 299
    new-instance v0, Lcom/perm/kate/EditChatActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$9;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->add_member_click_listener:Landroid/view/View$OnClickListener;

    .line 335
    new-instance v0, Lcom/perm/kate/EditChatActivity$11;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$11;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->chat_edit_callback:Lcom/perm/kate/session/Callback;

    .line 377
    new-instance v0, Lcom/perm/kate/EditChatActivity$14;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$14;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->add_member_listener:Lcom/perm/kate/session/Callback;

    .line 391
    new-instance v0, Lcom/perm/kate/EditChatActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$15;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->member_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 414
    new-instance v0, Lcom/perm/kate/EditChatActivity$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$17;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->return_to_conversation_click_listener:Landroid/view/View$OnClickListener;

    .line 421
    new-instance v0, Lcom/perm/kate/EditChatActivity$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$18;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->change_photo_click_listener:Landroid/view/View$OnClickListener;

    .line 458
    new-instance v0, Lcom/perm/kate/EditChatActivity$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$20;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 469
    new-instance v0, Lcom/perm/kate/EditChatActivity$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$21;-><init>(Lcom/perm/kate/EditChatActivity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 494
    new-instance v0, Lcom/perm/kate/EditChatActivity$23;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$23;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->delete_chat_photo_listener:Lcom/perm/kate/session/Callback;

    .line 546
    new-instance v0, Lcom/perm/kate/EditChatActivity$25;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/EditChatActivity$25;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->callback_invite_link:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/EditChatActivity;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/perm/kate/EditChatActivity;->account_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->showEditDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/EditChatActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/perm/kate/EditChatActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/perm/kate/EditChatActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->tv_chat_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->chatEdit()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->chat_edit_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->errorEditChatName()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->getChatName()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->add_member_listener:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->refreshInThread()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/EditChatActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/EditChatActivity;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/EditChatActivity;)Landroid/widget/ListView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->lv_members_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/perm/kate/EditChatActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->ll_buttons:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/perm/kate/EditChatActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->ll_buttons2:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/perm/kate/EditChatActivity;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/EditChatActivity;->addMemberToChat(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->deleteChatPhoto()V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/EditChatActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/perm/kate/EditChatActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->getChatInThread()V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->delete_chat_photo_listener:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->callback_invite_link:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/perm/kate/EditChatActivity;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/perm/kate/EditChatActivity;->copyInviteLink(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/perm/kate/EditChatActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->members:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/EditChatActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->showMembers()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/EditChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/perm/kate/EditChatActivity;->chat_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/EditChatActivity;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/perm/kate/EditChatActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/perm/kate/EditChatActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/perm/kate/EditChatActivity;->has_chat_photo:Z

    return p1
.end method

.method static synthetic access$802(Lcom/perm/kate/EditChatActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/perm/kate/EditChatActivity;->is_admin:Z

    return p1
.end method

.method static synthetic access$900(Lcom/perm/kate/EditChatActivity;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/perm/kate/EditChatActivity;->showYouAreLeftTheConversation(Z)V

    return-void
.end method

.method private addMemberToChat(J)V
    .locals 3

    .line 361
    new-instance v0, Lcom/perm/kate/EditChatActivity$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/EditChatActivity$13;-><init>(Lcom/perm/kate/EditChatActivity;J)V

    .line 366
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 367
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->createChatMember(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 370
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    .line 371
    iget-wide v0, p0, Lcom/perm/kate/EditChatActivity;->account_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/perm/kate/api/User;->invited_by:Ljava/lang/Long;

    .line 372
    iget-object p2, p0, Lcom/perm/kate/EditChatActivity;->members:Ljava/util/ArrayList;

    new-instance v0, Lcom/perm/kate/api/ChatMember;

    invoke-direct {v0, p1}, Lcom/perm/kate/api/ChatMember;-><init>(Lcom/perm/kate/api/User;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->showMembers()V

    return-void
.end method

.method private chatEdit()V
    .locals 1

    .line 327
    new-instance v0, Lcom/perm/kate/EditChatActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$10;-><init>(Lcom/perm/kate/EditChatActivity;)V

    .line 332
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private copyInviteLink(Ljava/lang/String;)V
    .locals 1

    .line 556
    new-instance v0, Lcom/perm/kate/EditChatActivity$26;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/EditChatActivity$26;-><init>(Lcom/perm/kate/EditChatActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private deleteChatPhoto()V
    .locals 1

    const/4 v0, 0x1

    .line 485
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 486
    new-instance v0, Lcom/perm/kate/EditChatActivity$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$22;-><init>(Lcom/perm/kate/EditChatActivity;)V

    .line 491
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 2

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 480
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 481
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private errorEditChatName()V
    .locals 1

    .line 352
    new-instance v0, Lcom/perm/kate/EditChatActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$12;-><init>(Lcom/perm/kate/EditChatActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getChatInThread()V
    .locals 1

    .line 239
    new-instance v0, Lcom/perm/kate/EditChatActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$4;-><init>(Lcom/perm/kate/EditChatActivity;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getChatName()V
    .locals 5

    .line 149
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    iget-wide v3, p0, Lcom/perm/kate/EditChatActivity;->account_id:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->tv_chat_name:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private getInviteLink()V
    .locals 1

    .line 538
    new-instance v0, Lcom/perm/kate/EditChatActivity$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$24;-><init>(Lcom/perm/kate/EditChatActivity;)V

    .line 543
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private prepareHeader()V
    .locals 1

    const/4 v0, -0x1

    .line 111
    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->setHeaderText(I)V

    return-void
.end method

.method private refresh()V
    .locals 8

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 165
    iget-wide v0, p0, Lcom/perm/kate/EditChatActivity;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    iget-wide v3, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    iget-object v6, p0, Lcom/perm/kate/EditChatActivity;->callback_users:Lcom/perm/kate/session/Callback;

    const-string v5, "online, photo_100"

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->getChatUsers(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private refreshInThread()V
    .locals 1

    .line 155
    new-instance v0, Lcom/perm/kate/EditChatActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$1;-><init>(Lcom/perm/kate/EditChatActivity;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showEditDialog()V
    .locals 6

    .line 272
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c006b

    const/4 v2, 0x0

    .line 273
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09011b

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 275
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f049e

    .line 276
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/perm/kate/EditChatActivity$7;

    invoke-direct {v4, p0, v1}, Lcom/perm/kate/EditChatActivity$7;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/widget/EditText;)V

    const v5, 0x7f0f05a7

    .line 277
    invoke-virtual {v0, v5, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0f037a

    .line 284
    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 287
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->tv_chat_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 290
    new-instance v0, Lcom/perm/kate/EditChatActivity$8;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/EditChatActivity$8;-><init>(Lcom/perm/kate/EditChatActivity;Landroid/widget/EditText;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showMembers()V
    .locals 5

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->members:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchChatFullMembers(J)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->members:Ljava/util/ArrayList;

    .line 135
    new-instance v1, Lcom/perm/kate/api/ChatMember;

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/EditChatActivity;->account_id:J

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/perm/kate/api/ChatMember;-><init>(Lcom/perm/kate/api/User;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/EditChatActivity;->setHeaderText(I)V

    .line 138
    new-instance v0, Lcom/perm/kate/ChatMembersAdapter;

    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->members:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/perm/kate/ChatMembersAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;J)V

    iput-object v0, p0, Lcom/perm/kate/EditChatActivity;->adapter:Lcom/perm/kate/ChatMembersAdapter;

    .line 139
    iget-object v1, p0, Lcom/perm/kate/EditChatActivity;->lv_members_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->getChatName()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showYouAreLeftTheConversation(Z)V
    .locals 1

    .line 403
    new-instance v0, Lcom/perm/kate/EditChatActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/EditChatActivity$16;-><init>(Lcom/perm/kate/EditChatActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    .line 522
    iget-boolean v0, p0, Lcom/perm/kate/EditChatActivity;->is_admin:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x3eb

    const v3, 0x7f0f01db

    .line 523
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 311
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 312
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    const-string v1, "uris"

    .line 314
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    const-string v3, "resize_option"

    .line 315
    invoke-virtual {p3, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "rotate"

    const/4 v3, 0x0

    .line 316
    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 317
    new-instance v2, Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/net/Uri;

    iget-object v8, p0, Lcom/perm/kate/EditChatActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/perm/kate/photoupload/AvatarUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;I)V

    iget-wide v3, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/photoupload/AvatarUploader;->uploadForChat(J)V

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    const-string p1, "com.perm.kate.member_id"

    const-wide/16 v0, 0x0

    .line 320
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/EditChatActivity;->addMemberToChat(J)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 65
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003f

    .line 67
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f01ed

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 71
    invoke-virtual {p0}, Lcom/perm/kate/EditChatActivity;->setButtonsBg2()V

    .line 72
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f090167

    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    const p1, 0x7f090213

    .line 74
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->lv_members_list:Landroid/widget/ListView;

    .line 75
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->member_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0901c9

    .line 76
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->ll_buttons:Landroid/widget/LinearLayout;

    const p1, 0x7f0901ca

    .line 77
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->ll_buttons2:Landroid/widget/LinearLayout;

    const p1, 0x7f09035a

    .line 78
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->tv_chat_name:Landroid/widget/TextView;

    const p1, 0x7f09006c

    .line 79
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->btn_chat_edit:Landroid/widget/Button;

    const p1, 0x7f090062

    .line 80
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->btn_add_member:Landroid/widget/Button;

    .line 81
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity;->btn_chat_edit:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->chat_edit_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity;->btn_add_member:Landroid/widget/Button;

    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->add_member_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09008e

    .line 83
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->btn_return_to_conversation:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->return_to_conversation_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006b

    .line 85
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/EditChatActivity;->btn_change_photo:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->change_photo_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.chat_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/EditChatActivity;->group_id:J

    .line 89
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/EditChatActivity;->account_id:J

    .line 90
    iget-wide v3, p0, Lcom/perm/kate/EditChatActivity;->chat_id:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->prepareHeader()V

    .line 93
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->showMembers()V

    .line 94
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->refreshInThread()V

    .line 95
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->getChatInThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 97
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 516
    invoke-virtual {p0, p1}, Lcom/perm/kate/EditChatActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 517
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 528
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 534
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/EditChatActivity;->getInviteLink()V

    return v1
.end method

.method public requeryOnUiThread()V
    .locals 1

    .line 231
    new-instance v0, Lcom/perm/kate/EditChatActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditChatActivity$3;-><init>(Lcom/perm/kate/EditChatActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setButtonsBg2()V
    .locals 2

    .line 103
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f09013c

    .line 105
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected setHeaderText(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    if-gez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 119
    :cond_0
    rem-int/lit8 v0, p1, 0xa

    const/4 v1, 0x4

    const v2, 0x7f0f04ad

    const-string v3, " "

    if-le p1, v1, :cond_1

    const/16 v1, 0x15

    if-ge p1, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 123
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f04ae

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 125
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f0f04af

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity;->header_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public showRequestPhotoDialog()V
    .locals 5

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00f7

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00f6

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-boolean v1, p0, Lcom/perm/kate/EditChatActivity;->has_chat_photo:Z

    if-eqz v1, :cond_0

    .line 433
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01e2

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/EditChatActivity$19;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/EditChatActivity$19;-><init>(Lcom/perm/kate/EditChatActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 454
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 455
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
