.class Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "FriendsListsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsListsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsListsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListsActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/FriendsListsActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    .line 103
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-static {v0}, Lcom/perm/kate/FriendsListsActivity;->access$000(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/tabs/TabsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-static {v0}, Lcom/perm/kate/FriendsListsActivity;->access$000(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/tabs/TabsInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    .line 114
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-static {v0}, Lcom/perm/kate/FriendsListsActivity;->access$100(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "lists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-static {v0}, Lcom/perm/kate/FriendsListsActivity;->access$200(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-static {v0}, Lcom/perm/kate/FriendsListsActivity;->access$000(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/tabs/TabsInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    iget p1, p1, Lcom/perm/kate/tabs/TabInfo;->title:I

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
