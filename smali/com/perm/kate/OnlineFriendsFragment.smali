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

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 94
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/OnlineFriendsFragment$2;-><init>(Lcom/perm/kate/OnlineFriendsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 117
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/OnlineFriendsFragment$3;-><init>(Lcom/perm/kate/OnlineFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 169
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/OnlineFriendsFragment$5;-><init>(Lcom/perm/kate/OnlineFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 227
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/OnlineFriendsFragment$6;-><init>(Lcom/perm/kate/OnlineFriendsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/OnlineFriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/OnlineFriendsFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/perm/kate/OnlineFriendsFragment;->requeryInUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/OnlineFriendsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/OnlineFriendsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/OnlineFriendsFragment;->showDeleteDialog(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/OnlineFriendsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/OnlineFriendsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/OnlineFriendsFragment;->deleteFriend(J)V

    return-void
.end method

.method private deleteFriend(J)V
    .locals 3
    .param p1, "friend_id"    # J

    .prologue
    .line 247
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$8;

    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/perm/kate/OnlineFriendsFragment$8;-><init>(Lcom/perm/kate/OnlineFriendsFragment;Landroid/app/Activity;J)V

    .line 266
    .local v0, "delete_friend_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/OnlineFriendsFragment;->showProgressBar(Z)V

    .line 267
    new-instance v1, Lcom/perm/kate/OnlineFriendsFragment$9;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/OnlineFriendsFragment$9;-><init>(Lcom/perm/kate/OnlineFriendsFragment;JLcom/perm/kate/session/Callback;)V

    .line 272
    invoke-virtual {v1}, Lcom/perm/kate/OnlineFriendsFragment$9;->start()V

    .line 273
    return-void
.end method

.method private displayData()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Lcom/perm/kate/FriendsCursorAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/perm/kate/OnlineFriendsFragment;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3, v4}, Lcom/perm/kate/FriendsCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Landroid/view/View$OnClickListener;)V

    .line 81
    .local v1, "notes":Lcom/perm/kate/FriendsCursorAdapter;
    iget-object v2, p0, Lcom/perm/kate/OnlineFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "notes":Lcom/perm/kate/FriendsCursorAdapter;
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/perm/kate/OnlineFriendsFragment;->displayToast(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private fetchData()V
    .locals 4

    .prologue
    .line 90
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/OnlineFriendsFragment;->user_id:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchOnlineFriends(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    .line 91
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/OnlineFriendsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 92
    return-void
.end method

.method private requeryInUiThread()V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/OnlineFriendsFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/OnlineFriendsFragment$4;-><init>(Lcom/perm/kate/OnlineFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showDeleteDialog(J)V
    .locals 5
    .param p1, "friend_id"    # J

    .prologue
    .line 235
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070184

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07051d

    new-instance v3, Lcom/perm/kate/OnlineFriendsFragment$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/perm/kate/OnlineFriendsFragment$7;-><init>(Lcom/perm/kate/OnlineFriendsFragment;J)V

    .line 237
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    const/4 v3, 0x0

    .line 242
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 244
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 151
    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0703a5

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/OnlineFriendsFragment;->setHasOptionsMenu(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "uid":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/OnlineFriendsFragment;->user_id:J

    .line 50
    invoke-direct {p0}, Lcom/perm/kate/OnlineFriendsFragment;->fetchData()V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    const v1, 0x7f03007b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    const v1, 0x7f0e00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    .line 34
    iget-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/OnlineFriendsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/OnlineFriendsFragment;->displayData()V

    .line 39
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 131
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 159
    :pswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->refreshInThread()V

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/perm/kate/OnlineFriendsFragment;->refreshInThread()V

    .line 211
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 215
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 216
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "friend_list_updated"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 218
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 223
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment;->mMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/OnlineFriendsFragment;->showProgressBar(Z)V

    .line 66
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/OnlineFriendsFragment$1;-><init>(Lcom/perm/kate/OnlineFriendsFragment;)V

    .line 71
    invoke-virtual {v0}, Lcom/perm/kate/OnlineFriendsFragment$1;->start()V

    .line 72
    return-void
.end method
