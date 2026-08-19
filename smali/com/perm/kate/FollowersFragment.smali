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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/perm/kate/FollowersFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FollowersFragment$2;-><init>(Lcom/perm/kate/FollowersFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->follow_callback:Lcom/perm/kate/session/Callback;

    .line 112
    new-instance v0, Lcom/perm/kate/FollowersFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FollowersFragment$3;-><init>(Lcom/perm/kate/FollowersFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->requests_callback:Lcom/perm/kate/session/Callback;

    .line 135
    new-instance v0, Lcom/perm/kate/FollowersFragment$4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/FollowersFragment$4;-><init>(Lcom/perm/kate/FollowersFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 189
    new-instance v0, Lcom/perm/kate/FollowersFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/FollowersFragment$7;-><init>(Lcom/perm/kate/FollowersFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 231
    new-instance v0, Lcom/perm/kate/FollowersFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/FollowersFragment$8;-><init>(Lcom/perm/kate/FollowersFragment;)V

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FollowersFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/perm/kate/FollowersFragment;->friend_requests:Z

    return p0
.end method

.method static synthetic access$100(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/FollowersFragment;->requests_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/FollowersFragment;)Landroid/widget/ListView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/FollowersFragment;->lv_user_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/FollowersFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/perm/kate/FollowersFragment;->is_followers:Z

    return p0
.end method

.method static synthetic access$300(Lcom/perm/kate/FollowersFragment;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/perm/kate/FollowersFragment;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/FollowersFragment;->follow_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/FollowersFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/FollowersFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/perm/kate/FollowersFragment;->createAdapter()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/api/InterestingPages;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/FollowersFragment;->displayInterestingPages(Lcom/perm/kate/api/InterestingPages;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/perm/kate/FollowersFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p0
.end method

.method static synthetic access$802(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment;->friends_list_adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/perm/kate/FollowersFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/perm/kate/FollowersFragment;->is_me:Z

    return p0
.end method

.method private createAdapter()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FollowersFragment$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/FollowersFragment$5;-><init>(Lcom/perm/kate/FollowersFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayInterestingPages(Lcom/perm/kate/api/InterestingPages;)V
    .locals 2

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/FollowersFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/FollowersFragment$6;-><init>(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/api/InterestingPages;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected ShowProfile(Ljava/lang/String;)V
    .locals 3

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.user_id"

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 214
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->requests_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->follow_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/FollowersFragment;->owner_id:J

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.followers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FollowersFragment;->is_followers:Z

    .line 54
    iget-wide v0, p0, Lcom/perm/kate/FollowersFragment;->owner_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/FollowersFragment;->owner_id_str:Ljava/lang/String;

    .line 55
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FollowersFragment;->is_me:Z

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "friend_requests"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/FollowersFragment;->friend_requests:Z

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->refreshInThread()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c007e

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09021e

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/FollowersFragment;->lv_user_list:Landroid/widget/ListView;

    .line 42
    iget-object p3, p0, Lcom/perm/kate/FollowersFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    iget-object p2, p0, Lcom/perm/kate/FollowersFragment;->lv_user_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/FollowersFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 45
    invoke-direct {p0}, Lcom/perm/kate/FollowersFragment;->createAdapter()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment;->lv_user_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 225
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->refreshInThread()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/perm/kate/FollowersFragment;->refreshInThread()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 77
    new-instance v0, Lcom/perm/kate/FollowersFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FollowersFragment$1;-><init>(Lcom/perm/kate/FollowersFragment;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
