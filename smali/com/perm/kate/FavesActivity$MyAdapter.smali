.class Lcom/perm/kate/FavesActivity$MyAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "FavesActivity.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavesActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/FavesActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/perm/kate/FavesActivity$MyAdapter;->this$0:Lcom/perm/kate/FavesActivity;

    .line 157
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/perm/kate/FavesActivity$MyAdapter;->this$0:Lcom/perm/kate/FavesActivity;

    iget-object v0, v0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/perm/kate/FavesActivity$MyAdapter;->this$0:Lcom/perm/kate/FavesActivity;

    iget-object v0, v0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    .line 168
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "people"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {v0}, Lcom/perm/kate/FaveUsersFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 170
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    new-instance v0, Lcom/perm/kate/FaveGroupsFragment;

    invoke-direct {v0}, Lcom/perm/kate/FaveGroupsFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 172
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "videos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    new-instance v0, Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {v0}, Lcom/perm/kate/FaveVideosFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 174
    :cond_2
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "photos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    new-instance v0, Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {v0}, Lcom/perm/kate/FavePhotosFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 176
    :cond_3
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "links"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    new-instance v0, Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {v0}, Lcom/perm/kate/FaveLinksFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 178
    :cond_4
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "posts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    new-instance v0, Lcom/perm/kate/FavePostsFragment;

    invoke-direct {v0}, Lcom/perm/kate/FavePostsFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 180
    :cond_5
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "fave_posts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "is_fave"

    if-eqz v0, :cond_6

    .line 181
    new-instance v0, Lcom/perm/kate/FavePostsFragment;

    invoke-direct {v0}, Lcom/perm/kate/FavePostsFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    iget-object v1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 185
    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object p1

    .line 187
    :cond_6
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v3, "fave_videos"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    new-instance v0, Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {v0}, Lcom/perm/kate/FaveVideosFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    iget-object v1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 192
    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object p1

    .line 194
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/perm/kate/FavesActivity$MyAdapter;->this$0:Lcom/perm/kate/FavesActivity;

    iget-object v1, v0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    iget p1, p1, Lcom/perm/kate/tabs/TabInfo;->title:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
