.class public Lcom/perm/kate/FriendsActivity$MyAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "FriendsActivity.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/FriendsActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    .line 110
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    iget-object v0, v0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    iget-object v0, v0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    .line 121
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.perm.kate.user_id"

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/perm/kate/FriendsFragment;

    invoke-direct {v0}, Lcom/perm/kate/FriendsFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-static {v2}, Lcom/perm/kate/FriendsActivity;->access$000(Lcom/perm/kate/FriendsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object p1

    .line 128
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "Online"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    new-instance v0, Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {v0}, Lcom/perm/kate/OnlineFriendsFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    iget-object v2, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-static {v2}, Lcom/perm/kate/FriendsActivity;->access$000(Lcom/perm/kate/FriendsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 133
    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object p1

    .line 135
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "Mutual"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Lcom/perm/kate/MutualFriendsFragment;

    invoke-direct {v0}, Lcom/perm/kate/MutualFriendsFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    iget-object v2, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-static {v2}, Lcom/perm/kate/FriendsActivity;->access$000(Lcom/perm/kate/FriendsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 140
    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object p1

    .line 142
    :cond_2
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "Requests"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    new-instance v0, Lcom/perm/kate/RequestsFriendsFragment;

    invoke-direct {v0}, Lcom/perm/kate/RequestsFriendsFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 144
    :cond_3
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "RequestsOutgoing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    new-instance v0, Lcom/perm/kate/FollowersFragment;

    invoke-direct {v0}, Lcom/perm/kate/FollowersFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "friend_requests"

    .line 147
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    iget-object v1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 149
    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object p1

    .line 151
    :cond_4
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "Suggestions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    new-instance v0, Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-direct {v0}, Lcom/perm/kate/SuggestionsFriendsFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 153
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    iget-object v0, v0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object p1
.end method
