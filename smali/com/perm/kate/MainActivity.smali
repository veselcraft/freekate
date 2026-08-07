.class public Lcom/perm/kate/MainActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/perm/kate/KTabActivity;
.implements Lcom/perm/kate/TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/MainActivity$MyAdapter;
    }
.end annotation


# instance fields
.field private final REQUEST_ACCOUNTS:I

.field audioFragment:Lcom/perm/kate/BaseFragment;

.field private counterCallback:Lcom/perm/kate/session/Callback;

.field currentFragment:Lcom/perm/kate/BaseFragment;

.field favesFragment:Lcom/perm/kate/BaseFragment;

.field private friend_notification_displayed:Z

.field friendsFragment:Lcom/perm/kate/BaseFragment;

.field private group_notification_displayed:Z

.field groupsFragment:Lcom/perm/kate/BaseFragment;

.field handler:Landroid/os/Handler;

.field isTabletUi:Z

.field mPager:Landroid/support/v4/view/ViewPager;

.field max_period:J

.field messagesFragment:Lcom/perm/kate/MessagesFragment;

.field newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

.field newsFragment:Lcom/perm/kate/NewsFragment;

.field private pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private photos_notification_displayed:Z

.field profileFragment:Lcom/perm/kate/BaseFragment;

.field repliesFragment:Lcom/perm/kate/NotificationsFragment;

.field private replies_notification_displayed:Z

.field tabs:Lcom/perm/kate/tabs/TabsInfo;

.field videoFragment:Lcom/perm/kate/BaseFragment;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/perm/kate/MainActivity;->REQUEST_ACCOUNTS:I

    .line 102
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->handler:Landroid/os/Handler;

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    .line 361
    new-instance v0, Lcom/perm/kate/MainActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/MainActivity$6;-><init>(Lcom/perm/kate/MainActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->counterCallback:Lcom/perm/kate/session/Callback;

    .line 912
    new-instance v0, Lcom/perm/kate/MainActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$11;-><init>(Lcom/perm/kate/MainActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 948
    iput-boolean v2, p0, Lcom/perm/kate/MainActivity;->friend_notification_displayed:Z

    .line 957
    iput-boolean v2, p0, Lcom/perm/kate/MainActivity;->replies_notification_displayed:Z

    .line 965
    iput-boolean v2, p0, Lcom/perm/kate/MainActivity;->group_notification_displayed:Z

    .line 973
    iput-boolean v2, p0, Lcom/perm/kate/MainActivity;->photos_notification_displayed:Z

    .line 981
    const-wide/32 v0, 0x48190800

    iput-wide v0, p0, Lcom/perm/kate/MainActivity;->max_period:J

    .line 105
    iput-boolean v2, p0, Lcom/perm/kate/MainActivity;->goHomeOnHeaderClick:Z

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->checkGroupMessages()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->refreshLocationSometimes()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->highlightTab(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/NewsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->createNewsFragment()Lcom/perm/kate/NewsFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->makeProfileFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/MainActivity;Z)Lcom/perm/kate/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->makeFriendsFragment(Z)Lcom/perm/kate/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->getCounters()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->counterCallback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->displayFriendNotificationOnce(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->displayRepliesNotificationOnce(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->displayGroupsNotificationOnce(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->displayPhotosNotificationOnce(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->confirmLogout()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MainActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->logoutAllAccounts()V

    return-void
.end method

.method private blockClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 603
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->finish()V

    .line 604
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->hasBlockPassword(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 605
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/BlockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    .local v0, "block_intent":Landroid/content/Intent;
    const-string v1, "block"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    invoke-virtual {p0, v0}, Lcom/perm/kate/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 614
    .end local v0    # "block_intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    invoke-static {p0, v2}, Lcom/perm/kate/BlockActivity;->setBlockFlag(Landroid/content/Context;Z)V

    .line 610
    const v1, 0x7f070499

    invoke-virtual {p0, v1}, Lcom/perm/kate/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 611
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 612
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private checkGroupMessages()V
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_group_message_notif"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 214
    :cond_0
    new-instance v0, Lcom/perm/kate/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$3;-><init>(Lcom/perm/kate/MainActivity;)V

    .line 238
    invoke-virtual {v0}, Lcom/perm/kate/MainActivity$3;->start()V

    goto :goto_0
.end method

.method private checkVisibleByThemeTHD(Landroid/view/View;)V
    .locals 1
    .param p1, "tabs_hor_divider"    # Landroid/view/View;

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 249
    :cond_0
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    packed-switch v0, :pswitch_data_0

    .line 258
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 255
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00c0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private clearFragmentReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1056
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    .line 1057
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    .line 1058
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    .line 1059
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 1060
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    .line 1061
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    .line 1062
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 1063
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    .line 1064
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 1065
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    .line 1066
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    .line 1067
    return-void
.end method

.method private confirmLogout()V
    .locals 3

    .prologue
    .line 617
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070077

    .line 618
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07051d

    new-instance v2, Lcom/perm/kate/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/perm/kate/MainActivity$9;-><init>(Lcom/perm/kate/MainActivity;)V

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070319

    const/4 v2, 0x0

    .line 624
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 625
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 627
    return-void
.end method

.method private createAudioFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 888
    new-instance v1, Lcom/perm/kate/AudioFragment;

    invoke-direct {v1}, Lcom/perm/kate/AudioFragment;-><init>()V

    .line 889
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 890
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.owner_id"

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 891
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 892
    return-object v1
.end method

.method private createGroupsFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 880
    new-instance v1, Lcom/perm/kate/GroupsFragment;

    invoke-direct {v1}, Lcom/perm/kate/GroupsFragment;-><init>()V

    .line 881
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 882
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 883
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 884
    return-object v1
.end method

.method private createNewsFragment()Lcom/perm/kate/NewsFragment;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 869
    new-instance v1, Lcom/perm/kate/NewsFragment;

    invoke-direct {v1}, Lcom/perm/kate/NewsFragment;-><init>()V

    .line 870
    .local v1, "newsFragment":Lcom/perm/kate/NewsFragment;
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.post_cursor_position"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 871
    .local v2, "pos":I
    if-eq v2, v5, :cond_0

    .line 872
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 873
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "com.perm.kate.post_cursor_position"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 874
    invoke-virtual {v1, v0}, Lcom/perm/kate/NewsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 876
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method private createVideoFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 839
    new-instance v1, Lcom/perm/kate/VideoFragment;

    invoke-direct {v1}, Lcom/perm/kate/VideoFragment;-><init>()V

    .line 840
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 841
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 842
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 843
    return-object v1
.end method

.method private displayFriendNotificationOnce(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 951
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->friend_notification_displayed:Z

    if-eqz v0, :cond_0

    .line 955
    :goto_0
    return-void

    .line 953
    :cond_0
    iput-boolean v1, p0, Lcom/perm/kate/MainActivity;->friend_notification_displayed:Z

    .line 954
    invoke-static {p0, p1, v1}, Lcom/perm/kate/notifications/FriendNotification;->display(Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method private displayGroupsNotificationOnce(I)V
    .locals 2
    .param p1, "groups"    # I

    .prologue
    const/4 v1, 0x1

    .line 967
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->group_notification_displayed:Z

    if-eqz v0, :cond_0

    .line 971
    :goto_0
    return-void

    .line 969
    :cond_0
    iput-boolean v1, p0, Lcom/perm/kate/MainActivity;->group_notification_displayed:Z

    .line 970
    invoke-static {p0, p1, v1}, Lcom/perm/kate/notifications/GroupsInvitesNotification;->display(Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method private displayPhotosNotificationOnce(I)V
    .locals 2
    .param p1, "photos"    # I

    .prologue
    const/4 v1, 0x1

    .line 975
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->photos_notification_displayed:Z

    if-eqz v0, :cond_0

    .line 979
    :goto_0
    return-void

    .line 977
    :cond_0
    iput-boolean v1, p0, Lcom/perm/kate/MainActivity;->photos_notification_displayed:Z

    .line 978
    invoke-static {p0, p1, v1}, Lcom/perm/kate/notifications/PhotosNotification;->display(Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method private displayRepliesNotificationOnce(I)V
    .locals 9
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 959
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->replies_notification_displayed:Z

    if-eqz v0, :cond_0

    .line 963
    :goto_0
    return-void

    .line 961
    :cond_0
    iput-boolean v2, p0, Lcom/perm/kate/MainActivity;->replies_notification_displayed:Z

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    .line 962
    invoke-static/range {v0 .. v8}, Lcom/perm/kate/notifications/RepliesNotification;->display(Landroid/content/Context;IZZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private exitClick()V
    .locals 4

    .prologue
    .line 589
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f070068

    invoke-virtual {p0, v3}, Lcom/perm/kate/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0702c6

    invoke-virtual {p0, v3}, Lcom/perm/kate/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 590
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v2, Lcom/perm/kate/MainActivity$8;

    invoke-direct {v2, p0}, Lcom/perm/kate/MainActivity$8;-><init>(Lcom/perm/kate/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 599
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 600
    return-void
.end method

.method public static friendsNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 390
    const-string v0, "key_start_friends_notifications"

    .line 391
    .local v0, "pref_name":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private getCounters()V
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    new-instance v0, Lcom/perm/kate/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$5;-><init>(Lcom/perm/kate/MainActivity;)V

    .line 304
    invoke-virtual {v0}, Lcom/perm/kate/MainActivity$5;->start()V

    goto :goto_0
.end method

.method private getDefaultTab()Ljava/lang/String;
    .locals 4

    .prologue
    .line 733
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 734
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const v3, 0x7f07052e

    invoke-virtual {p0, v3}, Lcom/perm/kate/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 735
    .local v0, "key":Ljava/lang/String;
    const-string v3, "0"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 736
    .local v1, "key_int":I
    if-nez v1, :cond_0

    .line 737
    const-string v3, "PostsNewsActivityTab"

    .line 744
    :goto_0
    return-object v3

    .line 738
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 739
    const-string v3, "FriendsTab"

    goto :goto_0

    .line 740
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 741
    const-string v3, "ProfileTab"

    goto :goto_0

    .line 742
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 743
    const-string v3, "MessagesTab"

    goto :goto_0

    .line 744
    :cond_3
    const-string v3, "PostsNewsActivityTab"

    goto :goto_0
.end method

.method private getLastLocationRefresh()J
    .locals 4

    .prologue
    .line 994
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "location_refresh_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSip()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1212
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v2, :cond_0

    .line 1218
    :goto_0
    return-object v1

    .line 1214
    :cond_0
    const-wide/32 v2, 0x1bfa14ad

    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1217
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static groupsInvitesNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 395
    const-string v0, "key_start_groups_invites_notifications"

    .line 396
    .local v0, "pref_name":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private hideAllFragments()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 308
    const/16 v5, 0xa

    new-array v2, v5, [Lcom/perm/kate/BaseFragment;

    iget-object v5, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    aput-object v5, v2, v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    aput-object v6, v2, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    aput-object v6, v2, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    aput-object v6, v2, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    aput-object v6, v2, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    aput-object v6, v2, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    aput-object v6, v2, v5

    .line 310
    .local v2, "fragments":[Lcom/perm/kate/BaseFragment;
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 311
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 312
    .local v3, "tm":Landroid/support/v4/app/FragmentTransaction;
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 313
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 312
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 316
    return-void
.end method

.method private hideTabs()V
    .locals 4

    .prologue
    .line 264
    iget-boolean v1, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz v1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_show_tabs"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 267
    .local v0, "show_tabs":Z
    if-nez v0, :cond_0

    .line 268
    const v1, 0x7f0e0209

    invoke-virtual {p0, v1}, Lcom/perm/kate/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private highlightTab(Ljava/lang/String;)V
    .locals 3
    .param p1, "current_tab"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e018b

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 411
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 412
    check-cast v0, Lcom/perm/kate/TabSelector;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v0, p1}, Lcom/perm/kate/TabSelector;->selectTab(Ljava/lang/String;)V

    .line 413
    :cond_0
    return-void
.end method

.method private isCloseConfirmEnabled()Z
    .locals 3

    .prologue
    .line 1095
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_confirm_close"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isHeaderScrollEnabled()Z
    .locals 3

    .prologue
    .line 242
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_header_scroll"

    const/4 v2, 0x1

    .line 243
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 242
    return v0
.end method

.method private logOut()V
    .locals 2

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->removeAllFragments()V

    .line 649
    sget-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->stop()V

    .line 651
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/Online;->stop(Z)V

    .line 652
    return-void
.end method

.method private logoutAllAccounts()V
    .locals 2

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->unregisterPushForAllAccounts()V

    .line 939
    sget-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->stop()V

    .line 940
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Online;->stop(Z)V

    .line 941
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 942
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v0, v0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 943
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 944
    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 945
    sget-object v0, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 946
    return-void
.end method

.method private makeFriendsFragment(Z)Lcom/perm/kate/BaseFragment;
    .locals 4
    .param p1, "online_first"    # Z

    .prologue
    .line 857
    iget-boolean v2, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz v2, :cond_0

    .line 858
    new-instance v1, Lcom/perm/kate/FriendsActivity;

    invoke-direct {v1}, Lcom/perm/kate/FriendsActivity;-><init>()V

    .line 861
    .local v1, "friendsFragment":Lcom/perm/kate/BaseFragment;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 862
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v2, "online_first"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 864
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 865
    return-object v1

    .line 860
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "friendsFragment":Lcom/perm/kate/BaseFragment;
    :cond_0
    new-instance v1, Lcom/perm/kate/FriendsFragment;

    invoke-direct {v1}, Lcom/perm/kate/FriendsFragment;-><init>()V

    .restart local v1    # "friendsFragment":Lcom/perm/kate/BaseFragment;
    goto :goto_0
.end method

.method private makeProfileFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 923
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 924
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "key_profile_tab"

    const-string v5, "0"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, "profile_type":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez v4, :cond_0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 928
    :cond_0
    new-instance v2, Lcom/perm/kate/ProfileFragment;

    invoke-direct {v2}, Lcom/perm/kate/ProfileFragment;-><init>()V

    .line 931
    .local v2, "profileFragment":Lcom/perm/kate/BaseFragment;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 932
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "com.perm.kate.user_id"

    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v5}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {v2, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 934
    return-object v2

    .line 930
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "profileFragment":Lcom/perm/kate/BaseFragment;
    :cond_1
    new-instance v2, Lcom/perm/kate/DashboardFragment;

    invoke-direct {v2}, Lcom/perm/kate/DashboardFragment;-><init>()V

    .restart local v2    # "profileFragment":Lcom/perm/kate/BaseFragment;
    goto :goto_0
.end method

.method public static photoTagNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 400
    const-string v0, "key_start_photo_tag_notifications"

    .line 401
    .local v0, "pref_name":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private refreshLocationSometimes()V
    .locals 4

    .prologue
    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->getLastLocationRefresh()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/perm/kate/MainActivity;->max_period:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 986
    new-instance v0, Lcom/perm/utils/MyLocation;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/utils/MyLocation;->getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z

    .line 987
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->updateLastLocationRefresh()V

    .line 989
    :cond_0
    return-void
.end method

.method private refreshStickers()V
    .locals 2

    .prologue
    .line 1099
    new-instance v0, Lcom/perm/kate/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$13;-><init>(Lcom/perm/kate/MainActivity;)V

    .line 1120
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1122
    return-void
.end method

.method private removeAllFragments()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 656
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 657
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    if-eqz v4, :cond_0

    .line 658
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 659
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    .line 661
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v4, :cond_1

    .line 662
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 663
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    .line 665
    :cond_1
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    if-eqz v4, :cond_2

    .line 666
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 667
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    .line 669
    :cond_2
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v4, :cond_3

    .line 670
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 671
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 673
    :cond_3
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    if-eqz v4, :cond_4

    .line 674
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 675
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    .line 677
    :cond_4
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    if-eqz v4, :cond_5

    .line 678
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 679
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    .line 681
    :cond_5
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v4, :cond_6

    .line 682
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 683
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 685
    :cond_6
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v4, :cond_7

    .line 686
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 687
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    .line 689
    :cond_7
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v4, :cond_8

    .line 690
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 691
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 693
    :cond_8
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v4, :cond_9

    .line 694
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 695
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    .line 697
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v4}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 698
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v4, v2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v3

    .line 699
    .local v3, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v4, v3, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v4, :cond_a

    .line 700
    iget-object v4, v3, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 701
    iput-object v5, v3, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 697
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 705
    .end local v3    # "tab":Lcom/perm/kate/tabs/TabInfo;
    :cond_b
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 706
    iput-object v5, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    .line 707
    return-void
.end method

.method public static replesNotificationsEnabled()Z
    .locals 3

    .prologue
    .line 385
    const-string v0, "key_start_replies_notifications"

    .line 386
    .local v0, "pref_name":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private reportOptions()V
    .locals 14

    .prologue
    .line 1128
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 1129
    .local v6, "time":J
    const-wide/16 v10, 0x64

    rem-long v10, v6, v10

    const-wide/16 v12, 0x63

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 1208
    .end local v6    # "time":J
    :goto_0
    return-void

    .line 1131
    .restart local v6    # "time":J
    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1133
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "collapse_news"

    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->isCollapseNewsEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "1"

    :goto_1
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    const-string v10, "my_messages"

    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v11, "key_reverse_message_1"

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "1"

    :goto_2
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    const-string v9, "reverse_messages"

    sget-object v10, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "key_messages_reverse_1"

    const-string v12, "1"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string v10, "message_bubbles"

    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v11, "key_messages_in_bubbles_1"

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "1"

    :goto_3
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    const-string v10, "wide_ava"

    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v11, "key_wide_ava"

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "1"

    :goto_4
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    const-string v10, "round_ava"

    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "1"

    :goto_5
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    const-string v10, "old_profile"

    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isOldProfile()Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "1"

    :goto_6
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const-string v9, "wall_subscriptions"

    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v10

    invoke-virtual {v10}, Lcom/perm/utils/WallSubscriptions;->getList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const v10, 0x7f07052c

    invoke-virtual {p0, v10}, Lcom/perm/kate/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1149
    .local v0, "card_news":Z
    const-string v10, "card_news"

    if-eqz v0, :cond_b

    const-string v9, "1"

    :goto_7
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v9, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1152
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "full_profile_tab"

    const-string v10, "key_profile_tab"

    const-string v11, "0"

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string v9, "OPTIONS"

    invoke-static {v9, v2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1156
    new-instance v2, Ljava/util/TreeMap;

    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1158
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "friends_tab"

    const v9, 0x7f070530

    invoke-virtual {p0, v9}, Lcom/perm/kate/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "1"

    :goto_8
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    const-string v10, "old_news"

    const v9, 0x7f070545

    invoke-virtual {p0, v9}, Lcom/perm/kate/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "1"

    :goto_9
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    const-string v9, "news_click"

    const-string v10, "news_click_key_1"

    const-string v11, "0"

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    const-string v10, "zoom_buttons"

    const-string v9, "key2_show_zoom_buttons"

    const/4 v11, 0x0

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "1"

    :goto_a
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    const-string v9, "dash_items"

    sget-object v10, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    const-string v10, "hide_news_spam"

    invoke-static {}, Lcom/perm/utils/SpamHelper;->isHideSpamEnabled()Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "1"

    :goto_b
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    const-string v10, "message_ava"

    const-string v9, "key_messages_ava"

    const/4 v11, 0x1

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "1"

    :goto_c
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    const-string v10, "message_scroll_unread"

    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isScrollToUnread()Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "1"

    :goto_d
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    invoke-static {}, Lcom/perm/kate/Helper;->getSigHash()Ljava/lang/Integer;

    move-result-object v1

    .line 1175
    .local v1, "hash":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1176
    const-string v9, "sig"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->getSip()Ljava/lang/String;

    move-result-object v4

    .line 1179
    .local v4, "sip":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1180
    const-string v9, "sip"

    invoke-interface {v2, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    :cond_2
    const-string v9, "OPTIONS2"

    invoke-static {v9, v2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1185
    new-instance v2, Ljava/util/TreeMap;

    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1187
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_3

    .line 1188
    const-string v10, "header_scroll"

    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result v9

    if-eqz v9, :cond_12

    const-string v9, "1"

    :goto_e
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    :cond_3
    const-string v10, "color_icon"

    const-string v9, "key_old_notifications_icon"

    const/4 v11, 0x0

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v9, "1"

    :goto_f
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const-string v8, "3"

    .line 1195
    .local v8, "value":Ljava/lang/String;
    sget-object v9, Lcom/perm/kate/CommentsActivity;->grouped_pref_name:Ljava/lang/String;

    invoke-interface {v3, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1196
    invoke-static {}, Lcom/perm/kate/CommentsActivity;->isGrouped()Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v8, "1"

    .line 1197
    :cond_4
    :goto_10
    const-string v9, "comments_grouped"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string v10, "old_group"

    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "1"

    :goto_11
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    const-string v10, "voice_button"

    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isVoiceButtonEnabled()Z

    move-result v9

    if-eqz v9, :cond_16

    const-string v9, "1"

    :goto_12
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    const-string v10, "voice_quality"

    const-string v9, "voice_quality"

    const/4 v11, 0x0

    invoke-interface {v3, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_17

    const-string v9, "1"

    :goto_13
    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    const-string v9, "OPTIONS3"

    invoke-static {v9, v2}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1204
    .end local v0    # "card_news":Z
    .end local v1    # "hash":Ljava/lang/Integer;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "sip":Ljava/lang/String;
    .end local v6    # "time":J
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1205
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1206
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1133
    .end local v5    # "th":Ljava/lang/Throwable;
    .restart local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "time":J
    :cond_5
    :try_start_1
    const-string v9, "0"

    goto/16 :goto_1

    .line 1135
    :cond_6
    const-string v9, "0"

    goto/16 :goto_2

    .line 1139
    :cond_7
    const-string v9, "0"

    goto/16 :goto_3

    .line 1141
    :cond_8
    const-string v9, "0"

    goto/16 :goto_4

    .line 1143
    :cond_9
    const-string v9, "0"

    goto/16 :goto_5

    .line 1145
    :cond_a
    const-string v9, "0"

    goto/16 :goto_6

    .line 1149
    .restart local v0    # "card_news":Z
    :cond_b
    const-string v9, "0"

    goto/16 :goto_7

    .line 1158
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_c
    const-string v9, "0"

    goto/16 :goto_8

    .line 1160
    :cond_d
    const-string v9, "0"

    goto/16 :goto_9

    .line 1164
    :cond_e
    const-string v9, "0"

    goto/16 :goto_a

    .line 1168
    :cond_f
    const-string v9, "0"

    goto/16 :goto_b

    .line 1170
    :cond_10
    const-string v9, "0"

    goto/16 :goto_c

    .line 1172
    :cond_11
    const-string v9, "0"

    goto/16 :goto_d

    .line 1188
    .restart local v1    # "hash":Ljava/lang/Integer;
    .restart local v4    # "sip":Ljava/lang/String;
    :cond_12
    const-string v9, "0"

    goto/16 :goto_e

    .line 1190
    :cond_13
    const-string v9, "0"

    goto/16 :goto_f

    .line 1196
    .restart local v8    # "value":Ljava/lang/String;
    :cond_14
    const-string v8, "0"

    goto :goto_10

    .line 1198
    :cond_15
    const-string v9, "0"

    goto :goto_11

    .line 1199
    :cond_16
    const-string v9, "0"

    goto :goto_12

    .line 1200
    :cond_17
    const-string v9, "0"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_13
.end method

.method private restoreFragmentReferences()V
    .locals 2

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "PostsNewsActivityTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NewsFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    .line 320
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "ProfileTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    .line 321
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "MessagesTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessagesFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    .line 322
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "FriendsTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/FriendsActivity;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 323
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "CommentsTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NewsCommentsFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    .line 324
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "RepliesTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NotificationsFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    .line 325
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "GroupsTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 326
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "FavesTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    .line 327
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "VideoTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 328
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "AudioTab"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    .line 329
    return-void
.end method

.method private scrollToTop(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .prologue
    .line 847
    const-string v1, "PostsNewsActivityTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 849
    .local v0, "ti":Lcom/perm/kate/tabs/TabInfo;
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1}, Lcom/perm/kate/BaseFragment;->jumpTop()V

    .line 852
    .end local v0    # "ti":Lcom/perm/kate/tabs/TabInfo;
    :cond_0
    return-void
.end method

.method private selectInitialTab()V
    .locals 5

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "current_tab"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "current_tab":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->getDefaultTab()Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_news_tab"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 338
    .local v1, "news_enabled":Z
    const-string v2, "PostsNewsActivityTab"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 339
    const-string v0, "ProfileTab"

    .line 340
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/MainActivity;->selectTab(Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method private selectTab(Ljava/lang/String;)V
    .locals 0
    .param p1, "current_tab"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/perm/kate/MainActivity;->onTabSelected(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->highlightTab(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method private setLeftPaneWidthByOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 1042
    iget-boolean v2, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez v2, :cond_1

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    const v2, 0x7f0e018b

    invoke-virtual {p0, v2}, Lcom/perm/kate/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1045
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1048
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1049
    sget v2, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MAX_WIDTH:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1052
    :cond_2
    sget v2, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MIN_WIDTH:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method private showCloseConfirmDialog()V
    .locals 5

    .prologue
    .line 1081
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1082
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f070069

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/MainActivity$12;

    invoke-direct {v4, p0}, Lcom/perm/kate/MainActivity$12;-><init>(Lcom/perm/kate/MainActivity;)V

    .line 1083
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    const/4 v4, 0x0

    .line 1088
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1089
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1090
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1091
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1092
    return-void
.end method

.method private showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V
    .locals 3
    .param p1, "fragment"    # Lcom/perm/kate/BaseFragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 896
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-ne v2, p1, :cond_0

    .line 910
    :goto_0
    return-void

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 899
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 900
    .local v1, "tm":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_1

    .line 901
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 902
    :cond_1
    invoke-virtual {p1}, Lcom/perm/kate/BaseFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 903
    const v2, 0x7f0e007e

    invoke-virtual {v1, v2, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 908
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 909
    iput-object p1, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 905
    :cond_2
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method private showOpenLinkDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 551
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    .local v0, "alert":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f070346

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 553
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03001e

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 554
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 555
    .local v2, "input":Landroid/widget/EditText;
    const v4, 0x7f0e006d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 556
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 557
    const v4, 0x7f070334

    new-instance v5, Lcom/perm/kate/MainActivity$7;

    invoke-direct {v5, p0, v2}, Lcom/perm/kate/MainActivity$7;-><init>(Lcom/perm/kate/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 570
    const v4, 0x7f07015d

    invoke-virtual {v0, v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 571
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 572
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 573
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 574
    return-void
.end method

.method private startAccountsActivity()V
    .locals 2

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AccountsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 346
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 347
    return-void
.end method

.method private unregisterPushForAllAccounts()V
    .locals 2

    .prologue
    .line 631
    sget-object v1, Lcom/perm/kate/push/Push;->token:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 643
    :goto_0
    return-void

    .line 634
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 635
    .local v0, "sessions_copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/session/Session;>;"
    new-instance v1, Lcom/perm/kate/MainActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/MainActivity$10;-><init>(Lcom/perm/kate/MainActivity;Ljava/util/ArrayList;)V

    .line 642
    invoke-virtual {v1}, Lcom/perm/kate/MainActivity$10;->start()V

    goto :goto_0
.end method

.method private updateLastLocationRefresh()V
    .locals 4

    .prologue
    .line 998
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location_refresh_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 999
    return-void
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getRefreshState()Z

    move-result v0

    .line 712
    .local v0, "refreshState":Z
    invoke-virtual {p0, v0}, Lcom/perm/kate/MainActivity;->showProgressBar(Z)V

    .line 713
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 471
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f0f0003

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 472
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_2

    .line 473
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 474
    .local v1, "pos":I
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3, v1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v2

    .line 475
    .local v2, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v3, v2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v3, :cond_0

    .line 476
    iget-object v3, v2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v3, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 481
    .end local v1    # "pos":I
    .end local v2    # "tab":Lcom/perm/kate/tabs/TabInfo;
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v3, :cond_1

    .line 482
    const v3, 0x7f0e038e

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 483
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 478
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v3, :cond_0

    .line 479
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v3, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    goto :goto_0
.end method

.method getRefreshState()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 716
    iget-boolean v3, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz v3, :cond_2

    .line 717
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-nez v3, :cond_1

    .line 728
    :cond_0
    :goto_0
    return v2

    .line 719
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2}, Lcom/perm/kate/BaseFragment;->getRefreshState()Z

    move-result v2

    goto :goto_0

    .line 721
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_0

    .line 723
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 724
    .local v0, "pos":I
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 725
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v3, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v3, :cond_0

    .line 726
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    iget-boolean v2, v2, Lcom/perm/kate/BaseFragment;->refreshState:Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 417
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 418
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->finish()V

    .line 449
    :goto_0
    return-void

    .line 423
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 425
    :try_start_0
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->logOut()V

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;
    
    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper;->reopenIfNeeded()V

    .line 426
    iget-boolean v1, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez v1, :cond_1

    .line 427
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 429
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 435
    :cond_1
    :goto_1
    const-string v1, "PostsNewsActivityTab"

    invoke-direct {p0, v1}, Lcom/perm/kate/MainActivity;->selectTab(Ljava/lang/String;)V

    .line 437
    sget-object v1, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v1}, Lcom/perm/kate/LongPoll;->start()V

    .line 438
    sget-object v1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v1}, Lcom/perm/kate/Online;->start()V

    .line 439
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMed;->refresh(Landroid/content/Context;)V

    .line 440
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->checkBirthdaysIfRequired(Landroid/content/Context;)V

    .line 441
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->refreshStickers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 433
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/perm/kate/MainActivity$MyAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/perm/kate/MainActivity$MyAdapter;-><init>(Lcom/perm/kate/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1037
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1038
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/perm/kate/MainActivity;->setLeftPaneWidthByOrientation(I)V

    .line 1039
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 114
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-static {}, Lcom/perm/kate/KApplication;->initIsTabletUi()V

    .line 119
    sget-boolean v4, Lcom/perm/kate/KApplication;->isTabletUi:Z

    iput-boolean v4, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    .line 121
    iget-boolean v4, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz v4, :cond_7

    const v4, 0x7f030106

    :goto_0
    invoke-virtual {p0, v4}, Lcom/perm/kate/MainActivity;->setContentView(I)V

    .line 123
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v6, "ProfileTab"

    invoke-virtual {v4, v6}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 124
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "key_news_tab"

    invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v6, "PostsNewsActivityTab"

    invoke-virtual {v4, v6}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v6, "MessagesTab"

    invoke-virtual {v4, v6}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 127
    const v4, 0x7f070530

    invoke-virtual {p0, v4}, Lcom/perm/kate/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "pref_name":Ljava/lang/String;
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v6, "FriendsTab"

    invoke-virtual {v4, v6}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-boolean v4, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez v4, :cond_3

    .line 132
    const v4, 0x7f0e020b

    invoke-virtual {p0, v4}, Lcom/perm/kate/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 133
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/perm/kate/MainActivity;->pageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 134
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 135
    const v4, 0x7f0e020a

    invoke-virtual {p0, v4}, Lcom/perm/kate/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/perm/kate/MainActivity;->checkVisibleByThemeTHD(Landroid/view/View;)V

    .line 138
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_2

    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 139
    :cond_2
    const v4, 0x7f0e01f3

    invoke-virtual {p0, v4}, Lcom/perm/kate/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "header":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 141
    .local v2, "params":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    invoke-virtual {v2, v5}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 146
    .end local v1    # "header":Landroid/view/View;
    .end local v2    # "params":Landroid/support/design/widget/AppBarLayout$LayoutParams;
    :cond_3
    iget-boolean v4, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz v4, :cond_4

    .line 147
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->restoreFragmentReferences()V

    .line 150
    :cond_4
    iget-boolean v4, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz v4, :cond_5

    .line 151
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->hideAllFragments()V

    .line 154
    :cond_5
    invoke-static {p0}, Lcom/perm/kate/BirthdayService;->schedule(Landroid/content/Context;)V

    .line 155
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->checkBirthdaysIfRequired(Landroid/content/Context;)V

    .line 157
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->hideHomeButton()V

    .line 158
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->setupMenuButton()V

    .line 159
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->setupComposeButton()V

    .line 160
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->setupSearchButton()V

    .line 161
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->setupRefreshButton()V

    .line 163
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v4, :cond_8

    .line 164
    .local v0, "have_session":Z
    :goto_1
    if-eqz v0, :cond_9

    .line 165
    iget-boolean v4, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez v4, :cond_6

    .line 166
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/perm/kate/MainActivity$MyAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/perm/kate/MainActivity$MyAdapter;-><init>(Lcom/perm/kate/MainActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 168
    :cond_6
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->selectInitialTab()V

    .line 171
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/perm/kate/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/perm/kate/MainActivity$1;-><init>(Lcom/perm/kate/MainActivity;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    :goto_2
    iget-object v4, p0, Lcom/perm/kate/MainActivity;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/perm/kate/MainActivity$2;

    invoke-direct {v5, p0, v0}, Lcom/perm/kate/MainActivity$2;-><init>(Lcom/perm/kate/MainActivity;Z)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    invoke-static {p0, v0}, Lcom/perm/kate/ReleaseNotes;->display(Landroid/app/Activity;Z)V

    .line 204
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->hideTabs()V

    .line 206
    new-instance v4, Lcom/perm/utils/ScreenOrientationHelper;

    invoke-direct {v4}, Lcom/perm/utils/ScreenOrientationHelper;-><init>()V

    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v4, v5}, Lcom/perm/utils/ScreenOrientationHelper;->getOrientation(Landroid/content/Context;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/perm/kate/MainActivity;->setLeftPaneWidthByOrientation(I)V

    .line 208
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->reportOptions()V

    .line 209
    return-void

    .line 121
    .end local v0    # "have_session":Z
    .end local v3    # "pref_name":Ljava/lang/String;
    :cond_7
    const v4, 0x7f03009c

    goto/16 :goto_0

    .restart local v3    # "pref_name":Ljava/lang/String;
    :cond_8
    move v0, v5

    .line 163
    goto :goto_1

    .line 182
    .restart local v0    # "have_session":Z
    :cond_9
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->startAccountsActivity()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 462
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 463
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->displayRefreshState()V

    .line 464
    invoke-virtual {p0, p1}, Lcom/perm/kate/MainActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1071
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->isCloseConfirmEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->showCloseConfirmDialog()V

    .line 1074
    const/4 v0, 0x1

    .line 1077
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 769
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 771
    const-string v1, "current_tab"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "current_tab":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 773
    invoke-direct {p0, v0}, Lcom/perm/kate/MainActivity;->selectTab(Ljava/lang/String;)V

    .line 774
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    .line 489
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 527
    const/4 v4, 0x0

    .line 528
    .local v4, "result_options_item_selected":Z
    iget-object v8, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v8, :cond_2

    .line 529
    iget-object v8, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    .line 530
    .local v3, "pos":I
    iget-object v8, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v8, v3}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v5

    .line 531
    .local v5, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v8, v5, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v8, :cond_0

    .line 532
    iget-object v8, v5, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v8, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .line 537
    .end local v3    # "pos":I
    .end local v5    # "tab":Lcom/perm/kate/tabs/TabInfo;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 547
    .end local v4    # "result_options_item_selected":Z
    :goto_1
    return v7

    .line 491
    :sswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->onSearch()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 541
    :catch_0
    move-exception v6

    .line 542
    .local v6, "th":Ljava/lang/Throwable;
    invoke-static {v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 543
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 544
    instance-of v7, v6, Ljava/lang/OutOfMemoryError;

    if-eqz v7, :cond_1

    .line 545
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    .line 547
    .end local v6    # "th":Ljava/lang/Throwable;
    :cond_1
    :goto_2
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto :goto_1

    .line 494
    :sswitch_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 495
    .local v0, "intent":Landroid/content/Intent;
    const-class v7, Lcom/perm/kate/Settings;

    invoke-virtual {v0, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0, v0}, Lcom/perm/kate/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 499
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->startAccountsActivity()V

    goto :goto_1

    .line 502
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v2, "intent2":Landroid/content/Intent;
    const-class v7, Lcom/perm/kate/NewsCommentsActivity;

    invoke-virtual {v2, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 504
    invoke-virtual {p0, v2}, Lcom/perm/kate/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 507
    .end local v2    # "intent2":Landroid/content/Intent;
    :sswitch_4
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->exitClick()V

    goto :goto_2

    .line 510
    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 511
    .local v1, "intent10":Landroid/content/Intent;
    const-class v7, Lcom/perm/kate/BirthdaysActivity;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 512
    invoke-virtual {p0, v1}, Lcom/perm/kate/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 515
    .end local v1    # "intent10":Landroid/content/Intent;
    :sswitch_6
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->blockClick()V

    goto :goto_2

    .line 518
    :sswitch_7
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/perm/kate/GamesActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/perm/kate/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 521
    :sswitch_8
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/perm/kate/history/HistoryActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, Lcom/perm/kate/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 524
    :sswitch_9
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->showOpenLinkDialog()V

    goto :goto_2

    .line 534
    .restart local v4    # "result_options_item_selected":Z
    :cond_2
    iget-object v8, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v8, :cond_0

    .line 535
    iget-object v8, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v8, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0

    .line 489
    :sswitch_data_0
    .sparse-switch
        0x7f0e0067 -> :sswitch_2
        0x7f0e0387 -> :sswitch_0
        0x7f0e038d -> :sswitch_1
        0x7f0e038e -> :sswitch_3
        0x7f0e038f -> :sswitch_5
        0x7f0e0390 -> :sswitch_6
        0x7f0e0391 -> :sswitch_4
        0x7f0e0392 -> :sswitch_7
        0x7f0e0393 -> :sswitch_8
        0x7f0e0394 -> :sswitch_9
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 749
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onPause()V

    .line 751
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v0, v1}, Lcom/perm/kate/Online;->stop(Z)V

    .line 753
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager;->refreshAccounts()V

    .line 754
    invoke-static {p0}, Lcom/perm/kate/Helper;->cleanup(Landroid/content/Context;)V

    .line 755
    invoke-static {p0}, Lcom/perm/kate/notifications/FriendNotification;->cancel(Landroid/content/Context;)V

    .line 756
    invoke-static {p0}, Lcom/perm/kate/notifications/RepliesNotification;->cancel(Landroid/content/Context;)V

    .line 757
    invoke-static {p0}, Lcom/perm/kate/notifications/GroupsInvitesNotification;->cancel(Landroid/content/Context;)V

    .line 758
    invoke-static {p0}, Lcom/perm/kate/notifications/PhotosNotification;->cancel(Landroid/content/Context;)V

    .line 759
    invoke-static {p0}, Lcom/perm/kate/notifications/GroupMessagesNotification;->cancel(Landroid/content/Context;)V

    .line 760
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->clearFragmentReferences()V

    .line 761
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 762
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->handler:Landroid/os/Handler;

    .line 763
    sput-boolean v1, Lcom/perm/kate/HiddenChats;->locked:Z

    .line 765
    :cond_0
    return-void
.end method

.method protected onRefreshButton()V
    .locals 3

    .prologue
    .line 273
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 275
    .local v0, "pos":I
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 276
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    .line 282
    .end local v0    # "pos":I
    .end local v1    # "tab":Lcom/perm/kate/tabs/TabInfo;
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    goto :goto_0
.end method

.method protected onSearch()V
    .locals 2

    .prologue
    .line 577
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 578
    .local v0, "intent_sa":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 579
    invoke-virtual {p0, v0}, Lcom/perm/kate/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 580
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->onSearch()V

    .line 585
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/MainActivity$4;-><init>(Lcom/perm/kate/MainActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onStart()V

    .line 294
    return-void
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 778
    iget-boolean v1, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez v1, :cond_1

    .line 779
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->getTabIndex(Ljava/lang/String;)I

    move-result v0

    .line 780
    .local v0, "pos":I
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/MainActivity;->scrollToTop(Ljava/lang/String;I)V

    .line 781
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 835
    .end local v0    # "pos":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->displayRefreshState()V

    .line 836
    return-void

    .line 783
    :cond_1
    const-string v1, "PostsNewsActivityTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 784
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    if-nez v1, :cond_14

    .line 785
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->createNewsFragment()Lcom/perm/kate/NewsFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    .line 789
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    const-string v2, "PostsNewsActivityTab"

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 791
    :cond_3
    const-string v1, "ProfileTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 792
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 794
    :cond_4
    const-string v1, "MessagesTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 795
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    if-nez v1, :cond_5

    .line 796
    new-instance v1, Lcom/perm/kate/MessagesFragment;

    invoke-direct {v1}, Lcom/perm/kate/MessagesFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    .line 797
    :cond_5
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    const-string v2, "MessagesTab"

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 799
    :cond_6
    const-string v1, "FriendsTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 800
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    if-nez v1, :cond_7

    .line 801
    invoke-direct {p0, v3}, Lcom/perm/kate/MainActivity;->makeFriendsFragment(Z)Lcom/perm/kate/BaseFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 802
    :cond_7
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    const-string v2, "FriendsTab"

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 804
    :cond_8
    const-string v1, "CommentsTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 805
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    if-nez v1, :cond_9

    .line 806
    new-instance v1, Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {v1}, Lcom/perm/kate/NewsCommentsFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    .line 807
    :cond_9
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    const-string v2, "CommentsTab"

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 809
    :cond_a
    const-string v1, "RepliesTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 810
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    if-nez v1, :cond_b

    .line 811
    new-instance v1, Lcom/perm/kate/NotificationsFragment;

    invoke-direct {v1}, Lcom/perm/kate/NotificationsFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    .line 812
    :cond_b
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    const-string v2, "RepliesTab"

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 814
    :cond_c
    const-string v1, "FavesTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 815
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    if-nez v1, :cond_d

    .line 816
    new-instance v1, Lcom/perm/kate/FavesActivity;

    invoke-direct {v1}, Lcom/perm/kate/FavesActivity;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    .line 817
    :cond_d
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    const-string v2, "FavesTab"

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 819
    :cond_e
    const-string v1, "VideoTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 820
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    if-nez v1, :cond_f

    .line 821
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->createVideoFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 822
    :cond_f
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    const-string v2, "VideoTab"

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 824
    :cond_10
    const-string v1, "GroupsTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 825
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    if-nez v1, :cond_11

    .line 826
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->createGroupsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 827
    :cond_11
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    const-string v2, "GroupsTab"

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 829
    :cond_12
    const-string v1, "AudioTab"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    if-nez v1, :cond_13

    .line 831
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->createAudioFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    .line 832
    :cond_13
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    const-string v2, "AudioTab"

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    :cond_14
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    if-ne v1, v2, :cond_2

    .line 787
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsFragment;->jumpTop()V

    goto/16 :goto_1
.end method
