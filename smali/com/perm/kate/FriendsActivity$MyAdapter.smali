.class public Lcom/perm/kate/FriendsActivity$MyAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/FriendsActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    .line 107
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 108
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    iget-object v0, v0, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 117
    iget-object v2, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    iget-object v2, v2, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    .line 118
    .local v1, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v3, "All"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    new-instance v2, Lcom/perm/kate/FriendsFragment;

    invoke-direct {v2}, Lcom/perm/kate/FriendsFragment;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-static {v3}, Lcom/perm/kate/FriendsActivity;->access$000(Lcom/perm/kate/FriendsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 149
    .end local v0    # "b":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 125
    :cond_0
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v3, "Online"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    new-instance v2, Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {v2}, Lcom/perm/kate/OnlineFriendsFragment;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-static {v3}, Lcom/perm/kate/FriendsActivity;->access$000(Lcom/perm/kate/FriendsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 132
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v3, "Mutual"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    new-instance v2, Lcom/perm/kate/MutualFriendsFragment;

    invoke-direct {v2}, Lcom/perm/kate/MutualFriendsFragment;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    invoke-static {v3}, Lcom/perm/kate/FriendsActivity;->access$000(Lcom/perm/kate/FriendsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 137
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 139
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_2
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v3, "Requests"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    new-instance v2, Lcom/perm/kate/RequestsFriendsFragment;

    invoke-direct {v2}, Lcom/perm/kate/RequestsFriendsFragment;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 141
    :cond_3
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v3, "RequestsOutgoing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 142
    new-instance v2, Lcom/perm/kate/FollowersFragment;

    invoke-direct {v2}, Lcom/perm/kate/FollowersFragment;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v2, "friend_requests"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v2, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 146
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto/16 :goto_0

    .line 148
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_4
    iget-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v3, "Suggestions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    new-instance v2, Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-direct {v2}, Lcom/perm/kate/SuggestionsFriendsFragment;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto/16 :goto_0

    .line 150
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "item":Ljava/lang/Object;
    iget-object v1, p0, Lcom/perm/kate/FriendsActivity$MyAdapter;->this$0:Lcom/perm/kate/FriendsActivity;

    iget-object v1, v1, Lcom/perm/kate/FriendsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v2

    move-object v1, v0

    check-cast v1, Lcom/perm/kate/BaseFragment;

    iput-object v1, v2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 160
    return-object v0
.end method
