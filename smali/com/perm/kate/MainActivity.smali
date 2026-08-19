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


# static fields
.field public static create_time:J


# instance fields
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

.field mPager:Landroidx/viewpager/widget/ViewPager;

.field messagesFragment:Lcom/perm/kate/MessagesFragment;

.field newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

.field newsFragment:Lcom/perm/kate/NewsFragment;

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private photos_notification_displayed:Z

.field profileFragment:Lcom/perm/kate/BaseFragment;

.field repliesFragment:Lcom/perm/kate/NotificationsFragment;

.field private replies_notification_displayed:Z

.field tabs:Lcom/perm/kate/tabs/TabsInfo;

.field videoFragment:Lcom/perm/kate/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$Lnz6G50p5fZd7CYDr_A8qjFuSdQ(Lcom/perm/kate/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->getCounters()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 107
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    .line 400
    new-instance v0, Lcom/perm/kate/MainActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/MainActivity$6;-><init>(Lcom/perm/kate/MainActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->counterCallback:Lcom/perm/kate/session/Callback;

    .line 962
    new-instance v0, Lcom/perm/kate/MainActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$11;-><init>(Lcom/perm/kate/MainActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    const/4 v0, 0x0

    .line 999
    iput-boolean v0, p0, Lcom/perm/kate/MainActivity;->friend_notification_displayed:Z

    .line 1008
    iput-boolean v0, p0, Lcom/perm/kate/MainActivity;->replies_notification_displayed:Z

    .line 1016
    iput-boolean v0, p0, Lcom/perm/kate/MainActivity;->group_notification_displayed:Z

    .line 1024
    iput-boolean v0, p0, Lcom/perm/kate/MainActivity;->photos_notification_displayed:Z

    .line 110
    iput-boolean v0, p0, Lcom/perm/kate/BaseActivity;->goHomeOnHeaderClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MainActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->checkGroupMessages()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/perm/kate/MainActivity;->counterCallback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/BaseFragment;
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->makeProfileFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/MainActivity;Z)Lcom/perm/kate/BaseFragment;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->makeFriendsFragment(Z)Lcom/perm/kate/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/MainActivity;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->displayFriendNotificationOnce(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MainActivity;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->displayRepliesNotificationOnce(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/MainActivity;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->displayGroupsNotificationOnce(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/MainActivity;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->displayPhotosNotificationOnce(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/MainActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->confirmLogout()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/MainActivity;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->logoutAllAccounts()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->highlightTab(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/NewsFragment;
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->createNewsFragment()Lcom/perm/kate/NewsFragment;

    move-result-object p0

    return-object p0
.end method

.method private blockClick()V
    .locals 3

    .line 649
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 650
    invoke-static {p0}, Lcom/perm/kate/BlockActivity;->hasBlockPassword(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/BlockActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "block"

    .line 652
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 653
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 655
    :cond_0
    invoke-static {p0, v1}, Lcom/perm/kate/BlockActivity;->setBlockFlag(Landroid/content/Context;Z)V

    const v0, 0x7f0f0523

    .line 656
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 657
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private checkGroupMessages()V
    .locals 3

    .line 247
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_group_message_notif"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    new-instance v0, Lcom/perm/kate/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$4;-><init>(Lcom/perm/kate/MainActivity;)V

    .line 273
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkVisibleByThemeTHD(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 284
    :cond_0
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    sparse-switch v0, :sswitch_data_0

    const/16 v0, 0x8

    .line 293
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x0

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c7 -> :sswitch_0
        0x7f1000cf -> :sswitch_0
        0x7f1000d7 -> :sswitch_0
        0x7f1000d9 -> :sswitch_0
        0x7f1000db -> :sswitch_0
    .end sparse-switch
.end method

.method private clearFragmentReferences()V
    .locals 1

    const/4 v0, 0x0

    .line 1097
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    .line 1098
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    .line 1099
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    .line 1100
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 1101
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    .line 1102
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    .line 1103
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 1104
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    .line 1105
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 1106
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    .line 1107
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    return-void
.end method

.method private confirmLogout()V
    .locals 3

    .line 662
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00aa

    .line 663
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/perm/kate/MainActivity$9;-><init>(Lcom/perm/kate/MainActivity;)V

    const v2, 0x7f0f05a7

    .line 664
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f037a

    const/4 v2, 0x0

    .line 669
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAudioFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 938
    new-instance v0, Lcom/perm/kate/AudioFragment;

    invoke-direct {v0}, Lcom/perm/kate/AudioFragment;-><init>()V

    .line 939
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 940
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.owner_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 941
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createGroupsFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 930
    new-instance v0, Lcom/perm/kate/GroupsFragment;

    invoke-direct {v0}, Lcom/perm/kate/GroupsFragment;-><init>()V

    .line 931
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 932
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 933
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createNewsFragment()Lcom/perm/kate/NewsFragment;
    .locals 4

    .line 919
    new-instance v0, Lcom/perm/kate/NewsFragment;

    invoke-direct {v0}, Lcom/perm/kate/NewsFragment;-><init>()V

    .line 920
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.post_cursor_position"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 922
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 923
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 924
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method private createVideoFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 889
    new-instance v0, Lcom/perm/kate/VideoFragment;

    invoke-direct {v0}, Lcom/perm/kate/VideoFragment;-><init>()V

    .line 890
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 891
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 892
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private displayFriendNotificationOnce(I)V
    .locals 1

    .line 1002
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->friend_notification_displayed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1004
    iput-boolean v0, p0, Lcom/perm/kate/MainActivity;->friend_notification_displayed:Z

    .line 1005
    invoke-static {p0, p1, v0}, Lcom/perm/kate/notifications/FriendNotification;->display(Landroid/content/Context;IZ)V

    return-void
.end method

.method private displayGroupsNotificationOnce(I)V
    .locals 1

    .line 1018
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->group_notification_displayed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1020
    iput-boolean v0, p0, Lcom/perm/kate/MainActivity;->group_notification_displayed:Z

    .line 1021
    invoke-static {p0, p1, v0}, Lcom/perm/kate/notifications/GroupsInvitesNotification;->display(Landroid/content/Context;IZ)V

    return-void
.end method

.method private displayPhotosNotificationOnce(I)V
    .locals 1

    .line 1026
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->photos_notification_displayed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1028
    iput-boolean v0, p0, Lcom/perm/kate/MainActivity;->photos_notification_displayed:Z

    .line 1029
    invoke-static {p0, p1, v0}, Lcom/perm/kate/notifications/PhotosNotification;->display(Landroid/content/Context;IZ)V

    return-void
.end method

.method private displayRepliesNotificationOnce(I)V
    .locals 10

    .line 1010
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->replies_notification_displayed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1012
    iput-boolean v0, p0, Lcom/perm/kate/MainActivity;->replies_notification_displayed:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    .line 1013
    invoke-static/range {v1 .. v9}, Lcom/perm/kate/notifications/RepliesNotification;->display(Landroid/content/Context;IZZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private exitClick()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f0f0087

    .line 635
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0f0321

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 636
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 637
    new-instance v2, Lcom/perm/kate/MainActivity$8;

    invoke-direct {v2, p0}, Lcom/perm/kate/MainActivity$8;-><init>(Lcom/perm/kate/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static friendsNotificationsEnabled()Z
    .locals 3

    .line 430
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_start_friends_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getCounters()V
    .locals 1

    .line 336
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    new-instance v0, Lcom/perm/kate/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$5;-><init>(Lcom/perm/kate/MainActivity;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getDefaultTab()Ljava/lang/String;
    .locals 3

    .line 779
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f0160

    .line 780
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    .line 781
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "PostsNewsActivityTab"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "FriendsTab"

    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "ProfileTab"

    return-object v0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v0, "MessagesTab"

    return-object v0

    :cond_3
    return-object v1
.end method

.method private getSip()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1281
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-wide/32 v2, 0x1bfa14ad

    .line 1283
    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1285
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1286
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static groupsInvitesNotificationsEnabled()Z
    .locals 3

    .line 435
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_start_groups_invites_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private hideAllFragments()V
    .locals 5

    const/16 v0, 0xa

    new-array v1, v0, [Lcom/perm/kate/BaseFragment;

    .line 347
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 351
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private hideTabs()V
    .locals 3

    .line 299
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz v0, :cond_0

    return-void

    .line 301
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "key_show_tabs"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f090318

    .line 303
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private highlightTab(Ljava/lang/String;)V
    .locals 2

    .line 449
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090317

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    check-cast v0, Lcom/perm/kate/TabSelector;

    invoke-interface {v0, p1}, Lcom/perm/kate/TabSelector;->selectTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isCloseConfirmEnabled()Z
    .locals 3

    .line 1136
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

    .line 277
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_header_scroll"

    const/4 v2, 0x1

    .line 278
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private logOut()V
    .locals 2

    .line 691
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->removeAllFragments()V

    .line 694
    sget-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->stop()V

    .line 696
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/Online;->stop(Z)V

    .line 697
    invoke-static {}, Lcom/perm/kate/KApplication;->getAudioQueue()Lcom/perm/kate/AudioQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/AudioQueue;->stop()V

    return-void
.end method

.method private logoutAllAccounts()V
    .locals 2

    .line 988
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->unregisterPushForAllAccounts()V

    .line 989
    sget-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->stop()V

    .line 990
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Online;->stop(Z)V

    const/4 v0, 0x0

    .line 991
    sput-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 992
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v0, v0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 993
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 994
    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 995
    sget-object v0, Lcom/perm/kate/KApplication;->group_sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 996
    invoke-static {}, Lcom/perm/kate/KApplication;->getAudioQueue()Lcom/perm/kate/AudioQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/AudioQueue;->stop()V

    return-void
.end method

.method private makeFriendsFragment(Z)Lcom/perm/kate/BaseFragment;
    .locals 4

    .line 907
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz v0, :cond_0

    .line 908
    new-instance v0, Lcom/perm/kate/FriendsActivity;

    invoke-direct {v0}, Lcom/perm/kate/FriendsActivity;-><init>()V

    goto :goto_0

    .line 910
    :cond_0
    new-instance v0, Lcom/perm/kate/FriendsFragment;

    invoke-direct {v0}, Lcom/perm/kate/FriendsFragment;-><init>()V

    .line 911
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 912
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "online_first"

    .line 913
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 914
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private makeProfileFragment()Lcom/perm/kate/BaseFragment;
    .locals 4

    .line 973
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_profile_tab"

    const-string v2, "0"

    .line 974
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    iget-boolean v1, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 980
    :cond_0
    new-instance v0, Lcom/perm/kate/DashboardFragment;

    invoke-direct {v0}, Lcom/perm/kate/DashboardFragment;-><init>()V

    goto :goto_1

    .line 978
    :cond_1
    :goto_0
    new-instance v0, Lcom/perm/kate/ProfileFragment;

    invoke-direct {v0}, Lcom/perm/kate/ProfileFragment;-><init>()V

    .line 981
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 982
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static photoTagNotificationsEnabled()Z
    .locals 3

    .line 440
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_start_photo_tag_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private refreshStickers()V
    .locals 2

    .line 1140
    new-instance v0, Lcom/perm/kate/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$13;-><init>(Lcom/perm/kate/MainActivity;)V

    const/4 v1, 0x1

    .line 1161
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeAllFragments()V
    .locals 5

    .line 701
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 704
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 705
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_1

    .line 708
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 709
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    .line 711
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    if-eqz v1, :cond_2

    .line 712
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 713
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    .line 715
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_3

    .line 716
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 717
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 719
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    if-eqz v1, :cond_4

    .line 720
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 721
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    .line 723
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    if-eqz v1, :cond_5

    .line 724
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 725
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    .line 727
    :cond_5
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_6

    .line 728
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 729
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 731
    :cond_6
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_7

    .line 732
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 733
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    .line 735
    :cond_7
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_8

    .line 736
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 737
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 739
    :cond_8
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_9

    .line 740
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 741
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    :cond_9
    const/4 v1, 0x0

    .line 743
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 744
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3, v1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v3

    .line 745
    iget-object v4, v3, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v4, :cond_a

    .line 746
    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 747
    iput-object v2, v3, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    :cond_b
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 752
    iput-object v2, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    return-void
.end method

.method public static replesNotificationsEnabled()Z
    .locals 3

    .line 425
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_start_replies_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private reportOptions()V
    .locals 11

    const-string v0, "voice_auto_send"

    const-string v1, "rtt"

    const-string v2, "voice_quality"

    .line 1169
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    .line 1170
    rem-long/2addr v3, v5

    const-wide/16 v5, 0x3e7

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    return-void

    .line 1172
    :cond_0
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-string v4, "collapse_news"

    .line 1174
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->isCollapseNewsEnabled()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "1"

    const-string v7, "0"

    if-eqz v5, :cond_1

    move-object v5, v6

    goto :goto_0

    :cond_1
    move-object v5, v7

    :goto_0
    :try_start_1
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "my_messages"

    .line 1176
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "key_reverse_message_2"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_1

    :cond_2
    move-object v5, v7

    :goto_1
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "reverse_messages"

    .line 1178
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "key_messages_reverse_2"

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "message_bubbles"

    .line 1180
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "key_messages_in_bubbles_2"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_2

    :cond_3
    move-object v5, v7

    :goto_2
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "wide_ava"

    .line 1182
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "key_wide_ava"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v6

    goto :goto_3

    :cond_4
    move-object v5, v7

    :goto_3
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "round_ava"

    .line 1184
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v6

    goto :goto_4

    :cond_5
    move-object v5, v7

    :goto_4
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "old_profile"

    .line 1186
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isOldProfile()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v6

    goto :goto_5

    :cond_6
    move-object v5, v7

    :goto_5
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "wall_subscriptions"

    .line 1187
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/utils/WallSubscriptions;->getList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const v5, 0x7f0f015e

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "card_news"

    if-eqz v4, :cond_7

    move-object v4, v6

    goto :goto_6

    :cond_7
    move-object v4, v7

    .line 1190
    :goto_6
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "full_profile_tab"

    const-string v8, "key_profile_tab"

    .line 1193
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "OPTIONS"

    .line 1195
    invoke-static {v5, v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1197
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-string v5, "friends_tab"

    const v8, 0x7f0f0162

    .line 1199
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v6

    goto :goto_7

    :cond_8
    move-object v8, v7

    :goto_7
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "old_news"

    const v8, 0x7f0f0170

    .line 1201
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v8, v6

    goto :goto_8

    :cond_9
    move-object v8, v7

    :goto_8
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "news_click"

    const-string v8, "news_click_key_4"

    .line 1203
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "zoom_buttons"

    const-string v8, "key2_show_zoom_buttons"

    .line 1205
    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v8, v6

    goto :goto_9

    :cond_a
    move-object v8, v7

    :goto_9
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "dash_items"

    .line 1207
    sget-object v8, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "hide_news_spam"

    .line 1209
    invoke-static {}, Lcom/perm/utils/SpamHelper;->isHideSpamEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v8, v6

    goto :goto_a

    :cond_b
    move-object v8, v7

    :goto_a
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "message_ava"

    const-string v8, "key_messages_ava"

    .line 1211
    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v8, v6

    goto :goto_b

    :cond_c
    move-object v8, v7

    :goto_b
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "message_scroll_unread"

    .line 1213
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isScrollToUnread()Z

    move-result v8

    if-eqz v8, :cond_d

    move-object v8, v6

    goto :goto_c

    :cond_d
    move-object v8, v7

    :goto_c
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    invoke-static {}, Lcom/perm/kate/Helper;->getSigHash()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_e

    const-string v8, "sig"

    .line 1217
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    :cond_e
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->getSip()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    const-string v8, "sip"

    .line 1221
    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const-string v5, "OPTIONS2"

    .line 1224
    invoke-static {v5, v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1226
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 1228
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v5, v8, :cond_11

    const-string v5, "header_scroll"

    .line 1229
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result v8

    if-eqz v8, :cond_10

    move-object v8, v6

    goto :goto_d

    :cond_10
    move-object v8, v7

    :goto_d
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string v5, "color_icon"

    const-string v8, "key_old_notifications_icon"

    .line 1231
    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_12

    move-object v8, v6

    goto :goto_e

    :cond_12
    move-object v8, v7

    :goto_e
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "3"

    .line 1236
    sget-object v8, Lcom/perm/kate/CommentsActivity;->grouped_pref_name:Ljava/lang/String;

    invoke-interface {v4, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1237
    invoke-static {}, Lcom/perm/kate/CommentsActivity;->isGrouped()Z

    move-result v5

    if-eqz v5, :cond_13

    move-object v5, v6

    goto :goto_f

    :cond_13
    move-object v5, v7

    :cond_14
    :goto_f
    const-string v8, "comments_grouped"

    .line 1238
    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "old_group"

    .line 1239
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v8

    if-eqz v8, :cond_15

    move-object v8, v6

    goto :goto_10

    :cond_15
    move-object v8, v7

    :goto_10
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "voice_button"

    .line 1240
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isVoiceButtonEnabled()Z

    move-result v8

    if-eqz v8, :cond_16

    move-object v8, v6

    goto :goto_11

    :cond_16
    move-object v8, v7

    :goto_11
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-interface {v4, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object v5, v6

    goto :goto_12

    :cond_17
    move-object v5, v7

    :goto_12
    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "offline"

    .line 1242
    sget-object v5, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v5}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_18

    move-object v5, v7

    goto :goto_13

    :cond_18
    move-object v5, v6

    :goto_13
    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lang"

    .line 1244
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "photo_save_size"

    const-string v5, "key_size_saved_photo"

    .line 1245
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "google_api"

    .line 1246
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "OPTIONS3"

    .line 1249
    invoke-static {v2, v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1251
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v3, "proxy"

    .line 1252
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result v5

    if-eqz v5, :cond_19

    move-object v5, v6

    goto :goto_14

    :cond_19
    move-object v5, v7

    :goto_14
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "proxy_type"

    .line 1254
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getProxyType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v3, "vk_smiles"

    const-string v5, "smiles_vk"

    .line 1255
    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object v5, v6

    goto :goto_15

    :cond_1b
    move-object v5, v7

    :goto_15
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "internal_browser"

    .line 1256
    invoke-static {p0}, Lcom/perm/kate/Helper;->useInternalWebBrowser(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move-object v5, v6

    goto :goto_16

    :cond_1c
    move-object v5, v7

    :goto_16
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    invoke-interface {v4, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v6

    goto :goto_17

    :cond_1d
    move-object v3, v7

    :goto_17
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "blind"

    const-string v3, "accessibility"

    .line 1259
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object v3, v6

    goto :goto_18

    :cond_1e
    move-object v3, v7

    :goto_18
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fullscreen"

    const-string v3, "key_fullscreen"

    .line 1260
    invoke-interface {v4, v3, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object v3, v6

    goto :goto_19

    :cond_1f
    move-object v3, v7

    :goto_19
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v1, v1, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    const-string v1, "fcm"

    .line 1262
    sget-object v3, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v3, v3, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/account/Account;

    iget-boolean v3, v3, Lcom/perm/kate/account/Account;->is_fcm:Z

    if-eqz v3, :cond_20

    move-object v3, v6

    goto :goto_1a

    :cond_20
    move-object v3, v7

    :goto_1a
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    :cond_21
    invoke-static {}, Lcom/perm/kate/KApplication;->isPackageNew()Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "custom_led_color"

    const v3, 0x7f0f016c

    .line 1264
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_22

    move-object v3, v7

    goto :goto_1b

    :cond_22
    move-object v3, v6

    :goto_1b
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    const-string v1, "resize"

    .line 1265
    invoke-static {}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResizeOption()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OPTIONS4"

    .line 1267
    invoke-static {v1, v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1269
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 1270
    invoke-interface {v4, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_1c

    :cond_24
    move-object v6, v7

    :goto_1c
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OPTIONS5"

    .line 1272
    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1d

    :catchall_0
    move-exception v0

    .line 1274
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1275
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1d
    return-void
.end method

.method private restoreFragmentReferences()V
    .locals 2

    .line 358
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PostsNewsActivityTab"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NewsFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ProfileTab"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->profileFragment:Lcom/perm/kate/BaseFragment;

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MessagesTab"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessagesFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "FriendsTab"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/FriendsActivity;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CommentsTab"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NewsCommentsFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RepliesTab"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NotificationsFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "GroupsTab"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "FavesTab"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "VideoTab"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 367
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "AudioTab"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    return-void
.end method

.method private scrollToTop(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "PostsNewsActivityTab"

    .line 897
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 898
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {p1, p2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    .line 899
    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz p1, :cond_0

    .line 900
    invoke-virtual {p1}, Lcom/perm/kate/BaseFragment;->jumpTop()V

    :cond_0
    return-void
.end method

.method private selectInitialTab()V
    .locals 4

    .line 373
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "current_tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->getDefaultTab()Ljava/lang/String;

    move-result-object v0

    .line 376
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "key_news_tab"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "PostsNewsActivityTab"

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    const-string v0, "ProfileTab"

    .line 379
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/MainActivity;->selectTab(Ljava/lang/String;)V

    return-void
.end method

.method private selectTab(Ljava/lang/String;)V
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lcom/perm/kate/MainActivity;->onTabSelected(Ljava/lang/String;)V

    .line 445
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->highlightTab(Ljava/lang/String;)V

    return-void
.end method

.method private setLeftPaneWidthByOrientation(I)V
    .locals 3

    .line 1083
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090317

    .line 1085
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1088
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1090
    sget p1, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MAX_WIDTH:I

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 1093
    :cond_2
    sget p1, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MIN_WIDTH:I

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_0
    return-void
.end method

.method private showCloseConfirmDialog()V
    .locals 4

    .line 1122
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0089

    .line 1123
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/MainActivity$12;

    invoke-direct {v2, p0}, Lcom/perm/kate/MainActivity$12;-><init>(Lcom/perm/kate/MainActivity;)V

    const v3, 0x7f0f05a7

    .line 1124
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    const/4 v3, 0x0

    .line 1129
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1130
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1131
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1132
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-ne v0, p1, :cond_0

    return-void

    .line 948
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 949
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 950
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_1

    .line 951
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 952
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0900da

    .line 953
    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 955
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 958
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 959
    iput-object p1, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    return-void
.end method

.method private showOpenLinkDialog()V
    .locals 4

    .line 598
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03ab

    .line 599
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 600
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0020

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09011c

    .line 601
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 602
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 603
    new-instance v1, Lcom/perm/kate/MainActivity$7;

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/MainActivity$7;-><init>(Lcom/perm/kate/MainActivity;Landroid/widget/EditText;)V

    const v2, 0x7f0f0398

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f01c5

    .line 616
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 617
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 618
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 619
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startAccountsActivity()V
    .locals 2

    .line 383
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 384
    const-class v1, Lcom/perm/kate/AccountsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x2

    .line 385
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private unregisterPushForAllAccounts()V
    .locals 2

    .line 676
    sget-object v0, Lcom/perm/kate/push/Push;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 679
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 680
    new-instance v1, Lcom/perm/kate/MainActivity$10;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/MainActivity$10;-><init>(Lcom/perm/kate/MainActivity;Ljava/util/ArrayList;)V

    .line 687
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private vkBlockCheck()V
    .locals 3

    .line 227
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "block_checked"

    const/4 v2, 0x0

    .line 228
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 236
    :cond_1
    new-instance v0, Lcom/perm/kate/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$3;-><init>(Lcom/perm/kate/MainActivity;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->getRefreshState()Z

    move-result v0

    .line 758
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 2

    .line 513
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    .line 514
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 515
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 518
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 524
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const v0, 0x7f0900d1

    .line 525
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 528
    :cond_2
    invoke-static {}, Lcom/perm/kate/KApplication;->isPackageNew()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f090154

    .line 529
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method getRefreshState()Z
    .locals 3

    .line 762
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_0

    return v1

    .line 765
    :cond_0
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->getRefreshState()Z

    move-result v0

    return v0

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_2

    return v1

    .line 769
    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 770
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 771
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_3

    .line 772
    iget-boolean v0, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    return v0

    :cond_3
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 457
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 464
    :try_start_0
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->logOut()V

    .line 465
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/perm/kate/MainActivity$MyAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/MainActivity$MyAdapter;-><init>(Lcom/perm/kate/MainActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 474
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->selectInitialTab()V

    .line 476
    sget-object v0, Lcom/perm/kate/KApplication;->longPoll:Lcom/perm/kate/LongPoll;

    invoke-virtual {v0}, Lcom/perm/kate/LongPoll;->start()V

    .line 477
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v0}, Lcom/perm/kate/Online;->start()V

    .line 478
    invoke-static {p0}, Lcom/perm/kate/KateWidgetMed;->refresh(Landroid/content/Context;)V

    .line 479
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->checkBirthdaysIfRequired(Landroid/content/Context;)V

    .line 480
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->refreshStickers()V

    .line 482
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_3

    .line 483
    invoke-static {}, Lcom/perm/kate/KApplication;->getAudioQueue()Lcom/perm/kate/AudioQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/AudioQueue;->start()V

    .line 484
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->getCounters()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 486
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 487
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1078
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1079
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->setLeftPaneWidthByOrientation(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 119
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {}, Lcom/perm/kate/KApplication;->initIsTabletUi()V

    .line 124
    sget-boolean p1, Lcom/perm/kate/KApplication;->isTabletUi:Z

    iput-boolean p1, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0c0125

    goto :goto_0

    :cond_0
    const p1, 0x7f0c00a9

    .line 126
    :goto_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 128
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "ProfileTab"

    invoke-virtual {p1, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 129
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "key_news_tab"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "PostsNewsActivityTab"

    invoke-virtual {p1, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "MessagesTab"

    invoke-virtual {p1, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    const p1, 0x7f0f0162

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 133
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 134
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const-string v0, "FriendsTab"

    invoke-virtual {p1, v0}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;)V

    .line 136
    :cond_2
    iget-boolean p1, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez p1, :cond_4

    const p1, 0x7f090260

    .line 137
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 138
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 139
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const p1, 0x7f0901a4

    .line 140
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->checkVisibleByThemeTHD(Landroid/view/View;)V

    .line 143
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_3

    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const p1, 0x7f090166

    .line 144
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 146
    invoke-virtual {p1, v2}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    .line 151
    :cond_4
    iget-boolean p1, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz p1, :cond_5

    .line 152
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->restoreFragmentReferences()V

    .line 155
    :cond_5
    iget-boolean p1, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-eqz p1, :cond_6

    .line 156
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->hideAllFragments()V

    .line 159
    :cond_6
    invoke-static {p0}, Lcom/perm/kate/BirthdayService;->schedule(Landroid/content/Context;)V

    .line 160
    invoke-static {p0}, Lcom/perm/kate/BirthdayHelper;->checkBirthdaysIfRequired(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->hideHomeButton()V

    .line 163
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 164
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupComposeButton()V

    .line 165
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupSearchButton()V

    .line 166
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 168
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_9

    .line 170
    iget-boolean p1, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    if-nez p1, :cond_8

    .line 171
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/perm/kate/MainActivity$MyAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/MainActivity$MyAdapter;-><init>(Lcom/perm/kate/MainActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 173
    :cond_8
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->selectInitialTab()V

    .line 176
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/perm/kate/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$1;-><init>(Lcom/perm/kate/MainActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 186
    :cond_9
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->startAccountsActivity()V

    .line 189
    :goto_2
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/perm/kate/MainActivity$2;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MainActivity$2;-><init>(Lcom/perm/kate/MainActivity;Z)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/perm/kate/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/MainActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    invoke-static {p0, v1}, Lcom/perm/kate/ReleaseNotes;->display(Landroid/app/Activity;Z)V

    .line 210
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->hideTabs()V

    .line 212
    new-instance p1, Lcom/perm/utils/ScreenOrientationHelper;

    invoke-direct {p1}, Lcom/perm/utils/ScreenOrientationHelper;-><init>()V

    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {p1, v0}, Lcom/perm/utils/ScreenOrientationHelper;->getOrientation(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->setLeftPaneWidthByOrientation(I)V

    .line 215
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->reportOptions()V

    .line 217
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->vkBlockCheck()V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/perm/kate/MainActivity;->create_time:J

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 505
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 506
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->displayRefreshState()V

    .line 507
    invoke-virtual {p0, p1}, Lcom/perm/kate/MainActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1113
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->isCloseConfirmEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->showCloseConfirmDialog()V

    const/4 p1, 0x1

    return p1

    .line 1118
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 815
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "current_tab"

    .line 817
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 819
    invoke-direct {p0, p1}, Lcom/perm/kate/MainActivity;->selectTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 536
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    .line 575
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    goto :goto_0

    .line 541
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 542
    const-class v1, Lcom/perm/kate/Settings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 543
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 538
    :sswitch_1
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->onSearch()V

    return v1

    .line 571
    :sswitch_2
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->showOpenLinkDialog()V

    goto/16 :goto_2

    .line 568
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/history/HistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 565
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/GamesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 554
    :sswitch_5
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->exitClick()V

    goto :goto_2

    .line 549
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    const-class v1, Lcom/perm/kate/NewsCommentsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 551
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 562
    :sswitch_7
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->blockClick()V

    goto :goto_2

    .line 557
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 558
    const-class v1, Lcom/perm/kate/BirthdaysActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 546
    :sswitch_9
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->startAccountsActivity()V

    return v1

    :goto_0
    if-eqz v2, :cond_0

    .line 576
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    .line 577
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v3, v2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v2

    .line 578
    iget-object v2, v2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_1

    .line 579
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    .line 581
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_1

    .line 582
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    return v1

    :catchall_0
    move-exception v0

    .line 589
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 590
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 591
    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_2

    .line 592
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    .line 594
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090008 -> :sswitch_9
        0x7f090051 -> :sswitch_8
        0x7f090052 -> :sswitch_7
        0x7f0900d1 -> :sswitch_6
        0x7f090125 -> :sswitch_5
        0x7f090154 -> :sswitch_4
        0x7f09016a -> :sswitch_3
        0x7f09025b -> :sswitch_2
        0x7f0902be -> :sswitch_1
        0x7f0902c6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .line 795
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onPause()V

    .line 797
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Online;->stop(Z)V

    .line 799
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager;->refreshAccounts()V

    .line 800
    invoke-static {p0}, Lcom/perm/kate/Helper;->cleanup(Landroid/content/Context;)V

    .line 801
    invoke-static {p0}, Lcom/perm/kate/notifications/FriendNotification;->cancel(Landroid/content/Context;)V

    .line 802
    invoke-static {p0}, Lcom/perm/kate/notifications/RepliesNotification;->cancel(Landroid/content/Context;)V

    .line 803
    invoke-static {p0}, Lcom/perm/kate/notifications/GroupsInvitesNotification;->cancel(Landroid/content/Context;)V

    .line 804
    invoke-static {p0}, Lcom/perm/kate/notifications/PhotosNotification;->cancel(Landroid/content/Context;)V

    .line 805
    invoke-static {p0}, Lcom/perm/kate/notifications/GroupMessagesNotification;->cancel(Landroid/content/Context;)V

    .line 806
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->clearFragmentReferences()V

    const/4 v0, 0x0

    .line 807
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 808
    iput-object v0, p0, Lcom/perm/kate/MainActivity;->handler:Landroid/os/Handler;

    .line 809
    sput-boolean v1, Lcom/perm/kate/HiddenChats;->locked:Z

    :cond_0
    return-void
.end method

.method protected onRefreshButton()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 311
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSearch()V
    .locals 2

    .line 623
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 624
    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 625
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->onSearch()V

    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 0

    .line 332
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onStart()V

    return-void
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 4

    .line 824
    iget-boolean v0, p0, Lcom/perm/kate/MainActivity;->isTabletUi:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->getTabIndex(Ljava/lang/String;)I

    move-result v0

    .line 826
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/MainActivity;->scrollToTop(Ljava/lang/String;I)V

    .line 827
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_15

    .line 828
    invoke-virtual {p1, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "PostsNewsActivityTab"

    .line 830
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 831
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    if-nez v2, :cond_1

    .line 832
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->createNewsFragment()Lcom/perm/kate/NewsFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    goto :goto_0

    .line 833
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/MainActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-ne v3, v2, :cond_2

    .line 834
    invoke-virtual {v2}, Lcom/perm/kate/NewsFragment;->jumpTop()V

    .line 836
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->newsFragment:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0, v2, v0}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    :cond_3
    const-string v0, "ProfileTab"

    .line 838
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 839
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_4
    const-string v0, "StoriesTab"

    .line 841
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 842
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/StoriesActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    const-string v0, "MessagesTab"

    .line 844
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 845
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    if-nez v2, :cond_6

    .line 846
    new-instance v2, Lcom/perm/kate/MessagesFragment;

    invoke-direct {v2}, Lcom/perm/kate/MessagesFragment;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    .line 847
    :cond_6
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->messagesFragment:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0, v2, v0}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    :cond_7
    const-string v0, "FriendsTab"

    .line 849
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 850
    iget-object v2, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    if-nez v2, :cond_8

    .line 851
    invoke-direct {p0, v1}, Lcom/perm/kate/MainActivity;->makeFriendsFragment(Z)Lcom/perm/kate/BaseFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 852
    :cond_8
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, v1, v0}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    :cond_9
    const-string v0, "CommentsTab"

    .line 854
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 855
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    if-nez v1, :cond_a

    .line 856
    new-instance v1, Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {v1}, Lcom/perm/kate/NewsCommentsFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    .line 857
    :cond_a
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->newsCommentsFragment:Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {p0, v1, v0}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    :cond_b
    const-string v0, "RepliesTab"

    .line 859
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 860
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    if-nez v1, :cond_c

    .line 861
    new-instance v1, Lcom/perm/kate/NotificationsFragment;

    invoke-direct {v1}, Lcom/perm/kate/NotificationsFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    .line 862
    :cond_c
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->repliesFragment:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0, v1, v0}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    :cond_d
    const-string v0, "FavesTab"

    .line 864
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 865
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    if-nez v1, :cond_e

    .line 866
    new-instance v1, Lcom/perm/kate/FavesActivity;

    invoke-direct {v1}, Lcom/perm/kate/FavesActivity;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    .line 867
    :cond_e
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->favesFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, v1, v0}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    :cond_f
    const-string v0, "VideoTab"

    .line 869
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 870
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    if-nez v1, :cond_10

    .line 871
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->createVideoFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 872
    :cond_10
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, v1, v0}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    :cond_11
    const-string v0, "GroupsTab"

    .line 874
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 875
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    if-nez v1, :cond_12

    .line 876
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->createGroupsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 877
    :cond_12
    iget-object v1, p0, Lcom/perm/kate/MainActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, v1, v0}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    :cond_13
    const-string v0, "AudioTab"

    .line 879
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 880
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_14

    .line 881
    invoke-direct {p0}, Lcom/perm/kate/MainActivity;->createAudioFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    .line 882
    :cond_14
    iget-object p1, p0, Lcom/perm/kate/MainActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/MainActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 885
    :cond_15
    :goto_1
    invoke-virtual {p0}, Lcom/perm/kate/MainActivity;->displayRefreshState()V

    return-void
.end method
