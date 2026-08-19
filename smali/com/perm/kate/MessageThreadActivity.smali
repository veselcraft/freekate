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

    .line 26
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadActivity;->i_started_longpoll:Z

    .line 249
    new-instance v0, Lcom/perm/kate/MessageThreadActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadActivity$2;-><init>(Lcom/perm/kate/MessageThreadActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    return-object p0
.end method

.method public static getShowLeftPane()Z
    .locals 3

    .line 246
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

    .line 242
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "messages_show_left_pane"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showHideLeftPane()V
    .locals 7

    const v0, 0x7f0900f3

    .line 105
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 111
    invoke-static {}, Lcom/perm/kate/MessageThreadActivity;->getShowLeftPane()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadActivity;->group_id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-wide v2, 0x4072c00000000000L    # 300.0

    .line 115
    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 113
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 116
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public dialogSelected(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 219
    iput-wide v0, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    .line 220
    iput-wide p3, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    goto :goto_0

    .line 222
    :cond_0
    iput-wide p1, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    .line 223
    iput-wide v0, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    .line 225
    :goto_0
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide p2, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    invoke-virtual {p1, p2, p3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object p1

    .line 226
    iget-object p2, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p2}, Lcom/perm/kate/MessageThreadFragment;->saveDraft()V

    .line 227
    iget-object p2, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p2}, Lcom/perm/kate/MessageThreadFragment;->markAllAsRead()V

    .line 228
    iget-object p2, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    iget-wide p3, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    iget-wide v0, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    invoke-virtual {p2, p3, p4, v0, v1}, Lcom/perm/kate/MessageThreadFragment;->displayThread(JJ)V

    .line 229
    invoke-virtual {p0, p1}, Lcom/perm/kate/MessageThreadActivity;->prepareHeader(Lcom/perm/kate/api/User;)V

    return-void
.end method

.method public displayOnlineState(Lcom/perm/kate/api/User;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    if-nez p1, :cond_1

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 212
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f080203

    goto :goto_0

    :cond_3
    const p1, 0x7f0801c5

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 139
    :cond_0
    invoke-static {}, Lcom/perm/kate/KApplication;->isTwoPaneMessages()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 140
    invoke-static {}, Lcom/perm/kate/MessageThreadActivity;->getShowLeftPane()Z

    move-result v0

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0f0116

    .line 141
    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0479

    .line 143
    invoke-interface {p1, v3, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 300
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    .line 302
    sget p1, Lcom/perm/kate/smile/SmileKeyboard;->NO_PAGE:I

    if-eqz p3, :cond_0

    const-string p2, "index"

    .line 304
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 305
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {p2, p1}, Lcom/perm/kate/smile/SmileKeyboard;->updatePages(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 41
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00b9

    .line 42
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.chat_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "com.perm.kate.message_uid"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v4, "unread_count"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "group_id"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/perm/kate/MessageThreadActivity;->group_id:J

    .line 49
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v5, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 54
    :cond_0
    invoke-virtual {v5}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 57
    iget-wide v9, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    cmp-long v5, v9, v1

    if-nez v5, :cond_1

    iget-wide v9, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    cmp-long v5, v9, v1

    if-nez v5, :cond_1

    .line 58
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v9, p0, Lcom/perm/kate/MessageThreadActivity;->group_id:J

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/perm/kate/db/DataHelper;->fetchLatestDialog(JJ)J

    move-result-wide v1

    .line 59
    invoke-static {v1, v2}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    .line 60
    invoke-static {v1, v2}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v5, "MessageThreadFragment"

    invoke-virtual {v2, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MessageThreadFragment;

    iput-object v2, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-nez v2, :cond_2

    .line 68
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 69
    new-instance v7, Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {v7}, Lcom/perm/kate/MessageThreadFragment;-><init>()V

    iput-object v7, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    .line 70
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 71
    iget-wide v8, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    invoke-virtual {v7, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    iget-wide v8, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 73
    iget-wide v8, p0, Lcom/perm/kate/MessageThreadActivity;->group_id:J

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 74
    invoke-virtual {v7, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    iget-object p1, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {p1, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0900da

    .line 76
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v2, p1, v0, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 77
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_2
    const p1, 0x7f090167

    .line 80
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/MessageThreadActivity;->header_text:Landroid/widget/TextView;

    const p1, 0x7f090143

    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/perm/kate/MessageThreadActivity;->fl_edit_button:Landroid/widget/FrameLayout;

    const p1, 0x7f090196

    .line 82
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    const p1, 0x7f0900f2

    .line 84
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MessagesFragment;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 86
    iput-boolean v0, p1, Lcom/perm/kate/MessagesFragment;->is_left_pane:Z

    .line 87
    iget-wide v1, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/perm/kate/MessagesFragment;->selectDialog(J)V

    .line 90
    :cond_3
    invoke-static {}, Lcom/perm/kate/KApplication;->isTwoPaneMessages()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 91
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadActivity;->showHideLeftPane()V

    .line 93
    :cond_4
    new-instance p1, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p1}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    const/4 v1, 0x0

    .line 94
    iget-object v2, p0, Lcom/perm/kate/MessageThreadActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V

    .line 98
    sget-object p1, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {p1}, Lcom/perm/kate/LongPoll;->isStarted()Z

    move-result p1

    if-nez p1, :cond_5

    .line 99
    sget-object p1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {p1}, Lcom/perm/kate/Online;->start()V

    .line 100
    iput-boolean v0, p0, Lcom/perm/kate/MessageThreadActivity;->i_started_longpoll:Z

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    .line 235
    iput-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->header_text:Landroid/widget/TextView;

    .line 236
    iput-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fl_edit_button:Landroid/widget/FrameLayout;

    .line 237
    iput-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    .line 238
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->onKeyDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 315
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 152
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 154
    :cond_1
    invoke-static {v1}, Lcom/perm/kate/MessageThreadActivity;->setShowLeftPane(Z)V

    .line 155
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadActivity;->showHideLeftPane()V

    return v1

    :cond_2
    const/4 p1, 0x0

    .line 158
    invoke-static {p1}, Lcom/perm/kate/MessageThreadActivity;->setShowLeftPane(Z)V

    .line 159
    invoke-direct {p0}, Lcom/perm/kate/MessageThreadActivity;->showHideLeftPane()V

    return v1
.end method

.method public onPause()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->saveDraft()V

    .line 289
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onPause()V

    .line 291
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadActivity;->i_started_longpoll:Z

    if-eqz v0, :cond_1

    .line 293
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Online;->stop(Z)V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 127
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 128
    invoke-virtual {p0, p1}, Lcom/perm/kate/MessageThreadActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity;->fragment:Lcom/perm/kate/MessageThreadFragment;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->onRefreshButton()V

    :cond_0
    return-void
.end method

.method protected onSmileButton()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->smileButtonClick()V

    return-void
.end method

.method public prepareHeader(Lcom/perm/kate/api/User;)V
    .locals 7

    .line 171
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    const/16 v2, 0x8

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_3

    if-eqz p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0, p1}, Lcom/perm/kate/MessageThreadActivity;->displayOnlineState(Lcom/perm/kate/api/User;)V

    goto :goto_0

    :cond_0
    move-object v0, v5

    .line 176
    :goto_0
    iget-wide v3, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 177
    iget-wide v3, p0, Lcom/perm/kate/MessageThreadActivity;->message_uid:J

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v3

    .line 180
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 183
    :cond_1
    invoke-virtual {p0, v5}, Lcom/perm/kate/MessageThreadActivity;->displayOnlineState(Lcom/perm/kate/api/User;)V

    :cond_2
    move-object v5, v0

    .line 185
    iget-object p1, p0, Lcom/perm/kate/MessageThreadActivity;->fl_edit_button:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 186
    :cond_3
    iget-wide v0, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    cmp-long p1, v0, v3

    if-lez p1, :cond_4

    .line 187
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 188
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/MessageThreadActivity;->chat_id:J

    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 189
    iget-object p1, p0, Lcom/perm/kate/MessageThreadActivity;->fl_edit_button:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/perm/kate/MessageThreadActivity;->iv_header_online:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090143

    .line 191
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/MessageThreadActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageThreadActivity$1;-><init>(Lcom/perm/kate/MessageThreadActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 199
    iget-object p1, p0, Lcom/perm/kate/MessageThreadActivity;->header_text:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public registerEditText(Landroid/widget/EditText;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v0, p1}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    return-void
.end method
