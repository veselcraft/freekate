.class Lcom/perm/kate/FavesActivity$MyAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FavesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FavesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavesActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/FavesActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/perm/kate/FavesActivity$MyAdapter;->this$0:Lcom/perm/kate/FavesActivity;

    .line 126
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 127
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/perm/kate/FavesActivity$MyAdapter;->this$0:Lcom/perm/kate/FavesActivity;

    iget-object v0, v0, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 136
    iget-object v1, p0, Lcom/perm/kate/FavesActivity$MyAdapter;->this$0:Lcom/perm/kate/FavesActivity;

    iget-object v1, v1, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 137
    .local v0, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "people"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Lcom/perm/kate/FaveUsersFragment;

    invoke-direct {v1}, Lcom/perm/kate/FaveUsersFragment;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 146
    :goto_0
    return-object v1

    .line 139
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "videos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    new-instance v1, Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {v1}, Lcom/perm/kate/FaveVideosFragment;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "photos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    new-instance v1, Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {v1}, Lcom/perm/kate/FavePhotosFragment;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "links"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    new-instance v1, Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {v1}, Lcom/perm/kate/FaveLinksFragment;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 145
    :cond_3
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "posts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    new-instance v1, Lcom/perm/kate/FavePostsFragment;

    invoke-direct {v1}, Lcom/perm/kate/FavePostsFragment;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 147
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/perm/kate/FavesActivity$MyAdapter;->this$0:Lcom/perm/kate/FavesActivity;

    iget-object v1, p0, Lcom/perm/kate/FavesActivity$MyAdapter;->this$0:Lcom/perm/kate/FavesActivity;

    iget-object v1, v1, Lcom/perm/kate/FavesActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    iget v1, v1, Lcom/perm/kate/tabs/TabInfo;->title:I

    invoke-virtual {v0, v1}, Lcom/perm/kate/FavesActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
