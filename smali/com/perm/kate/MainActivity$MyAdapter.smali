.class Lcom/perm/kate/MainActivity$MyAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
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
.method public constructor <init>(Lcom/perm/kate/MainActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1034
    iput-object p1, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    .line 1035
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    iget-object v0, v0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    iget-object v0, v0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    .line 1046
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "PostsNewsActivityTab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iget-object p1, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {p1}, Lcom/perm/kate/MainActivity;->access$900(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/NewsFragment;

    move-result-object p1

    return-object p1

    .line 1048
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "ProfileTab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    iget-object p1, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    invoke-static {p1}, Lcom/perm/kate/MainActivity;->access$1000(Lcom/perm/kate/MainActivity;)Lcom/perm/kate/BaseFragment;

    move-result-object p1

    return-object p1

    .line 1050
    :cond_1
    iget-object p1, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v0, "FriendsTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1051
    iget-object p1, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/perm/kate/MainActivity;->access$1100(Lcom/perm/kate/MainActivity;Z)Lcom/perm/kate/BaseFragment;

    move-result-object p1

    return-object p1

    .line 1052
    :cond_2
    new-instance p1, Lcom/perm/kate/MessagesFragment;

    invoke-direct {p1}, Lcom/perm/kate/MessagesFragment;-><init>()V

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 1063
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    .line 1064
    iget-object v0, p0, Lcom/perm/kate/MainActivity$MyAdapter;->this$0:Lcom/perm/kate/MainActivity;

    iget-object v0, v0, Lcom/perm/kate/MainActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p2, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object p1
.end method
