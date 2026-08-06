.class Lcom/perm/kate/MainActivity$MyAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/MainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    .line 1004
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 1005
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    iget-object v0, v0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1014
    iget-object v1, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    iget-object v1, v1, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 1015
    .local v0, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "PostsNewsActivityTab"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {v1}, Lcom/perm/kate/MainActivity;->access$1100(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/NewsFragment;

    move-result-object v1

    .line 1021
    :goto_0
    return-object v1

    .line 1017
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "ProfileTab"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1018
    iget-object v1, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {v1}, Lcom/perm/kate/MainActivity;->access$1200(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/BaseFragment;

    move-result-object v1

    goto :goto_0

    .line 1019
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "FriendsTab"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1020
    iget-object v1, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/perm/kate/MainActivity;->access$1300(Lcom/perm/kate/MainActivity;Z)Lcom/perm/kate/BaseFragment;

    move-result-object v1

    goto :goto_0

    .line 1021
    :cond_2
    new-instance v1, Lcom/perm/kate/MessagesFragment;

    invoke-direct {v1}, Lcom/perm/kate/MessagesFragment;-><init>()V

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 1029
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 1030
    .local v0, "item":Ljava/lang/Object;
    iget-object v1, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    iget-object v1, v1, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v2

    move-object v1, v0

    check-cast v1, Lcom/perm/kate/BaseFragment;

    iput-object v1, v2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 1031
    return-object v0
.end method
