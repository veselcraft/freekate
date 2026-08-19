.class public Lcom/perm/kate/OnlineFriendsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "OnlineFriendsFragment.java"


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field cursor:Landroid/database/Cursor;

.field private itemMenuClickListener:Landroid/view/View$OnClickListener;

.field private lv_user_list:Landroid/widget/ListView;

.field private mMessageReceiver:Landroid/content/BroadcastReceiver;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field user_id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 94
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/OnlineFriendsFragment$2;-><init>(Lcom/perm/kate/OnlineFriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 119
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/OnlineFriendsFragment$3;-><init>(Lcom/perm/kate/OnlineFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 171
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/OnlineFriendsFragment$5;-><init>(Lcom/perm/kate/OnlineFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 229
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/OnlineFriendsFragment$6;-><init>(Lcom/perm/kate/OnlineFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/OnlineFriendsFragment;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/OnlineFriendsFragment;->requeryInUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/OnlineFriendsFragment;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/OnlineFriendsFragment;->showDeleteDialog(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/OnlineFriendsFragment;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/OnlineFriendsFragment;->deleteFriend(J)V

    return-void
.end method

.method private deleteFriend(J)V
    .locals 2

    .line 249
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$8;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/perm/kate/OnlineFriendsFragment$8;-><init>(Lcom/perm/kate/OnlineFriendsFragment;Landroid/app/Activity;J)V

    const/4 v1, 0x1

    .line 268
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 269
    new-instance v1, Lcom/perm/kate/OnlineFriendsFragment$9;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/OnlineFriendsFragment$9;-><init>(Lcom/perm/kate/OnlineFriendsFragment;JLcom/perm/kate/session/Callback;)V

    .line 274
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayData()V
    .locals 4

    .line 80
    :try_start_0
    new-instance v0, Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/perm/kate/OnlineFriendsFragment;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/FriendsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private fetchData()V
    .locals 3

    .line 90
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/OnlineFriendsFragment;->user_id:J

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchOnlineFriends(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    .line 91
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private requeryInUiThread()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/OnlineFriendsFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/OnlineFriendsFragment$4;-><init>(Lcom/perm/kate/OnlineFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showDeleteDialog(J)V
    .locals 3

    .line 237
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 238
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f01e3

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/OnlineFriendsFragment$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/perm/kate/OnlineFriendsFragment$7;-><init>(Lcom/perm/kate/OnlineFriendsFragment;J)V

    const p1, 0x7f0f05a7

    .line 239
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 153
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->user_id:J

    .line 50
    invoke-direct {p0}, Lcom/perm/kate/OnlineFriendsFragment;->fetchData()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0088

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090150

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09021e

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/OnlineFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    .line 34
    iget-object p3, p0, Lcom/perm/kate/OnlineFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/OnlineFriendsFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 164
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->refreshInThread()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->refreshInThread()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 217
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 218
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "friend_list_updated"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 224
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 225
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 66
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/OnlineFriendsFragment$1;-><init>(Lcom/perm/kate/OnlineFriendsFragment;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
