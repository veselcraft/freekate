.class public Lcom/perm/kate/FollowersFragment;
.super Lcom/perm/kate/BaseFragment;
.source "FollowersFragment.java"


# instance fields
.field private callback:Lcom/perm/kate/session/Callback;

.field private follow_callback:Lcom/perm/kate/session/Callback;

.field private friend_requests:Z

.field private friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

.field private is_followers:Z

.field private is_me:Z

.field private lv_user_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private owner_id:J

.field private owner_id_str:Ljava/lang/String;

.field private requests_callback:Lcom/perm/kate/session/Callback;

.field users_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/perm/kate/FollowersFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FollowersFragment$2;-><init>(Lcom/perm/kate/FollowersFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->follow_callback:Lcom/perm/kate/session/Callback;

    .line 112
    new-instance v0, Lcom/perm/kate/FollowersFragment$3;

    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FollowersFragment$3;-><init>(Lcom/perm/kate/FollowersFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->requests_callback:Lcom/perm/kate/session/Callback;

    .line 135
    new-instance v0, Lcom/perm/kate/FollowersFragment$4;

    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FollowersFragment$4;-><init>(Lcom/perm/kate/FollowersFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 190
    new-instance v0, Lcom/perm/kate/FollowersFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/FollowersFragment$7;-><init>(Lcom/perm/kate/FollowersFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 232
    new-instance v0, Lcom/perm/kate/FollowersFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/FollowersFragment$8;-><init>(Lcom/perm/kate/FollowersFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FollowersFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/perm/kate/FollowersFragment;->friend_requests:Z

    return v0
.end method

.method static synthetic access$100(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->requests_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/FollowersFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->lv_user_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FollowersFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/perm/kate/FollowersFragment;->is_followers:Z

    return v0
.end method

.method static synthetic access$300(Lcom/perm/kate/FollowersFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/perm/kate/FollowersFragment;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->follow_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/FollowersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/FollowersFragment;->createAdapter()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/api/InterestingPages;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/InterestingPages;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/FollowersFragment;->displayInterestingPages(Lcom/perm/kate/api/InterestingPages;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/FriendsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;
    .param p1, "x1"    # Lcom/perm/kate/FriendsListAdapter;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/perm/kate/FollowersFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/perm/kate/FollowersFragment;->is_me:Z

    return v0
.end method

.method private createAdapter()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FollowersFragment$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/FollowersFragment$5;-><init>(Lcom/perm/kate/FollowersFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayInterestingPages(Lcom/perm/kate/api/InterestingPages;)V
    .locals 2
    .param p1, "ip"    # Lcom/perm/kate/api/InterestingPages;

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FollowersFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/FollowersFragment$6;-><init>(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/api/InterestingPages;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected ShowProfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 207
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v0}, Lcom/perm/kate/FollowersFragment;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method

.method public fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 215
    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0703a5

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->requests_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->follow_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FollowersFragment;->owner_id:J

    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.followers"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FollowersFragment;->is_followers:Z

    .line 54
    iget-wide v0, p0, Lcom/perm/kate/FollowersFragment;->owner_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->owner_id_str:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->owner_id_str:Ljava/lang/String;

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FollowersFragment;->is_me:Z

    .line 56
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "friend_requests"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FollowersFragment;->friend_requests:Z

    .line 58
    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->refreshInThread()V

    .line 60
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/FollowersFragment;->lv_user_list:Landroid/widget/ListView;

    .line 42
    iget-object v1, p0, Lcom/perm/kate/FollowersFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FollowersFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    iget-object v1, p0, Lcom/perm/kate/FollowersFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FollowersFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 45
    invoke-direct {p0}, Lcom/perm/kate/FollowersFragment;->createAdapter()V

    .line 46
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 187
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 188
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 223
    :pswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->refreshInThread()V

    .line 224
    const/4 v0, 0x1

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->refreshInThread()V

    .line 73
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/FollowersFragment;->showProgressBar(Z)V

    .line 77
    new-instance v0, Lcom/perm/kate/FollowersFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FollowersFragment$1;-><init>(Lcom/perm/kate/FollowersFragment;)V

    .line 87
    invoke-virtual {v0}, Lcom/perm/kate/FollowersFragment$1;->start()V

    .line 88
    return-void
.end method
