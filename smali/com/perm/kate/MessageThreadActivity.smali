.class public Lcom/perm/kate/MessageThreadActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MessageThreadActivity.java"


# instance fields
.field chat_id:J

.field private fl_edit_button:Landroid/widget/FrameLayout;

.field private fragment:Lcom/perm/kate/MessageThreadFragment;

.field group_id:J

.field private header_text:Landroid/widget/TextView;

.field i_started_longpoll:Z

.field private iv_header_online:Landroid/view/View;

.field listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field message_uid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadActivity;->i_started_longpoll:Z

    .line 248
    new-instance v0, Lcom/perm/kate/MessageThreadActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadActivity$2;-><init>(Lcom/perm/kate/MessageThreadActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessageThreadActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    return-object v0
.end method

.method public static getShowLeftPane()Z
    .locals 3

    .prologue
    .line 245
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "messages_show_left_pane"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static setShowLeftPane(Z)V
    .locals 2
    .param p0, "show"    # Z

    .prologue
    .line 241
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "messages_show_left_pane"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    return-void
.end method

.method private showHideLeftPane()V
    .locals 6

    .prologue
    .line 104
    const v2, 0x7f0e023d

    invoke-virtual {p0, v2}, Lcom/perm/kate/MessageThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "pane":Landroid/view/View;
    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 110
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/perm/kate/MessageThreadActivity;->getShowLeftPane()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadActivity;->group_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 112
    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 115
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 114
    :cond_2
    const-wide v2, 0x4072c00000000000L    # 300.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1
.end method


# virtual methods
.method public dialogSelected(JJ)V
    .locals 7
    .param p1, "message_uid2"    # J
    .param p3, "chat_id2"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 217
    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    .line 218
    iput-wide v2, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    .line 219
    iput-wide p3, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    .line 224
    :goto_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 225
    .local v0, "user":Lcom/perm/kate/api/User;
    iget-object v1, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MessageThreadFragment;->saveDraft()V

    .line 226
    iget-object v1, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MessageThreadFragment;->markAllAsRead()V

    .line 227
    iget-object v1, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    iget-wide v4, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/MessageThreadFragment;->displayThread(JJ)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/perm/kate/MessageThreadActivity;->prepareHeader(Lcom/perm/kate/api/User;)V

    .line 229
    return-void

    .line 221
    .end local v0    # "user":Lcom/perm/kate/api/User;
    :cond_0
    iput-wide p1, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    .line 222
    iput-wide v2, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    goto :goto_0
.end method

.method public displayOnlineState(Lcom/perm/kate/api/User;)V
    .locals 3
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    const/16 v0, 0x8

    .line 205
    iget-object v1, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    if-nez p1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    iget-object v2, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f02013f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const v1, 0x7f020113

    goto :goto_1
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v3, 0x1f4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 138
    :cond_0
    invoke-static {}, Lcom/perm/kate/KApplication;->isTwoPaneMessages()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lcom/perm/kate/MessageThreadActivity;->getShowLeftPane()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const v0, 0x7f0700cc

    invoke-interface {p1, v1, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 144
    :cond_1
    :goto_0
    return v2

    .line 142
    :cond_2
    const v0, 0x7f0703e9

    invoke-interface {p1, v1, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    if-nez p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->updatePages()V

    .line 296
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v9, 0x7f0300aa

    invoke-virtual {p0, v9}, Lcom/perm/kate/MessageThreadActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadActivity;->setupMenuButton()V

    .line 43
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadActivity;->setupRefreshButton()V

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "com.perm.kate.chat_id"

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    .line 45
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "com.perm.kate.message_uid"

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "unread_count"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 47
    .local v8, "unread_count":I
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "group_id"

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->group_id:J

    .line 48
    sget-object v9, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v9, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadActivity;->finish()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    sget-object v9, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v9}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 56
    .local v0, "account_id":J
    iget-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    iget-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 57
    sget-object v9, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->group_id:J

    invoke-virtual {v9, v0, v1, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchLatestDialog(JJ)J

    move-result-wide v6

    .line 58
    .local v6, "thread_id":J
    invoke-static {v6, v7}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    .line 59
    invoke-static {v6, v7}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    .line 62
    .end local v6    # "thread_id":J
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 65
    .local v4, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    const-string v10, "MessageThreadFragment"

    invoke-virtual {v9, v10}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v9

    check-cast v9, Lcom/perm/kate/MessageThreadFragment;

    iput-object v9, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    .line 66
    iget-object v9, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-nez v9, :cond_3

    .line 67
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 68
    .local v5, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v9, Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {v9}, Lcom/perm/kate/MessageThreadFragment;-><init>()V

    iput-object v9, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    .line 69
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v2, "b":Landroid/os/Bundle;
    const-string v9, "com.perm.kate.chat_id"

    iget-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 71
    const-string v9, "com.perm.kate.message_uid"

    iget-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    const-string v9, "group_id"

    iget-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->group_id:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 73
    const-string v9, "unread_count"

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    iget-object v9, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v9, v2}, Lcom/perm/kate/MessageThreadFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    const v9, 0x7f0e007e

    iget-object v10, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    const-string v11, "MessageThreadFragment"

    invoke-virtual {v5, v9, v10, v11}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 76
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 79
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v5    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_3
    const v9, 0x7f0e01f6

    invoke-virtual {p0, v9}, Lcom/perm/kate/MessageThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/perm/kate/MessageThreadActivity;->header_text:Landroid/widget/TextView;

    .line 80
    const v9, 0x7f0e0244

    invoke-virtual {p0, v9}, Lcom/perm/kate/MessageThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, p0, Lcom/perm/kate/MessageThreadActivity;->fl_edit_button:Landroid/widget/FrameLayout;

    .line 81
    const v9, 0x7f0e0243

    invoke-virtual {p0, v9}, Lcom/perm/kate/MessageThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    .line 83
    const v9, 0x7f0e023e

    invoke-virtual {v4, v9}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/MessagesFragment;

    .line 84
    .local v3, "dialogs_fgagment":Lcom/perm/kate/MessagesFragment;
    if-eqz v3, :cond_4

    .line 85
    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/perm/kate/MessagesFragment;->is_left_pane:Z

    .line 86
    iget-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    invoke-static {v9, v10, v11}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/perm/kate/MessagesFragment;->selectDialog(J)V

    .line 89
    :cond_4
    invoke-static {}, Lcom/perm/kate/KApplication;->isTwoPaneMessages()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 90
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadActivity;->showHideLeftPane()V

    .line 92
    :cond_5
    new-instance v9, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {v9}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object v9, p0, Lcom/perm/kate/MessageThreadActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 93
    iget-object v9, p0, Lcom/perm/kate/MessageThreadActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/perm/kate/MessageThreadActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    const/4 v12, 0x1

    invoke-virtual {v9, p0, v10, v11, v12}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V

    .line 97
    sget-object v9, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v9}, Lcom/perm/kate/LongPoll;->isStarted()Z

    move-result v9

    if-nez v9, :cond_0

    .line 98
    sget-object v9, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v9}, Lcom/perm/kate/Online;->start()V

    .line 99
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/perm/kate/MessageThreadActivity;->i_started_longpoll:Z

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    .line 234
    iput-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->header_text:Landroid/widget/TextView;

    .line 235
    iput-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fl_edit_button:Landroid/widget/FrameLayout;

    .line 236
    iput-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    .line 237
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 238
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v1, p1}, Lcom/perm/kate/MessageThreadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 151
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->setShowLeftPane(Z)V

    .line 154
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadActivity;->showHideLeftPane()V

    goto :goto_0

    .line 157
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/perm/kate/MessageThreadActivity;->setShowLeftPane(Z)V

    .line 158
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadActivity;->showHideLeftPane()V

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->saveDraft()V

    .line 282
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onPause()V

    .line 284
    invoke-virtual {p0}, Lcom/perm/kate/MessageThreadActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadActivity;->i_started_longpoll:Z

    if-eqz v0, :cond_1

    .line 286
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Online;->stop(Z)V

    .line 289
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/perm/kate/MessageThreadActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->onRefreshButton()V

    .line 122
    :cond_0
    return-void
.end method

.method protected onSmileButton()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->smileButtonClick()V

    .line 166
    return-void
.end method

.method public prepareHeader(Lcom/perm/kate/api/User;)V
    .locals 11
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    .line 169
    const/4 v3, 0x0

    .line 170
    .local v3, "title":Ljava/lang/CharSequence;
    iget-wide v6, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 171
    if-eqz p1, :cond_0

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {p0, p1}, Lcom/perm/kate/MessageThreadActivity;->displayOnlineState(Lcom/perm/kate/api/User;)V

    .line 175
    :cond_0
    iget-wide v6, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 176
    iget-wide v6, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    invoke-static {v6, v7}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v4

    .line 179
    .local v4, "group_id":J
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v6, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v2

    .line 180
    .local v2, "group":Lcom/perm/kate/api/Group;
    if-eqz v2, :cond_1

    .line 181
    iget-object v3, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 182
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/perm/kate/MessageThreadActivity;->displayOnlineState(Lcom/perm/kate/api/User;)V

    .line 184
    .end local v2    # "group":Lcom/perm/kate/api/Group;
    .end local v4    # "group_id":J
    :cond_2
    iget-object v6, p0, Lcom/perm/kate/MessageThreadActivity;->fl_edit_button:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 197
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 198
    iget-object v6, p0, Lcom/perm/kate/MessageThreadActivity;->header_text:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p0, v3}, Lcom/perm/kate/MessageThreadActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    :cond_4
    return-void

    .line 185
    :cond_5
    iget-wide v6, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 186
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v6}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 187
    .local v0, "account_id":J
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v8, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    invoke-virtual {v6, v8, v9, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "title":Ljava/lang/CharSequence;
    check-cast v3, Ljava/lang/String;

    .line 188
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/perm/kate/MessageThreadActivity;->fl_edit_button:Landroid/widget/FrameLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 189
    iget-object v6, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 190
    const v6, 0x7f0e0244

    invoke-virtual {p0, v6}, Lcom/perm/kate/MessageThreadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/MessageThreadActivity$1;

    invoke-direct {v7, p0}, Lcom/perm/kate/MessageThreadActivity$1;-><init>(Lcom/perm/kate/MessageThreadActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public registerEditText(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v0, p1}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    .line 276
    return-void
.end method
