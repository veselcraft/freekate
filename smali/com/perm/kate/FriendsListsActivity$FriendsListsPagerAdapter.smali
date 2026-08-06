.class Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
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
.method public constructor <init>(Lcom/perm/kate/FriendsListsActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    .line 103
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 104
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-static {v0}, Lcom/perm/kate/FriendsListsActivity;->access$000(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/tabs/TabsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 113
    iget-object v1, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-static {v1}, Lcom/perm/kate/FriendsListsActivity;->access$000(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/tabs/TabsInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 114
    .local v0, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "friends"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-static {v1}, Lcom/perm/kate/FriendsListsActivity;->access$100(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/BaseFragment;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 117
    :goto_0
    return-object v1

    .line 116
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "lists"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-static {v1}, Lcom/perm/kate/FriendsListsActivity;->access$200(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/BaseFragment;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 118
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    iget-object v1, p0, Lcom/perm/kate/FriendsListsActivity$FriendsListsPagerAdapter;->this$0:Lcom/perm/kate/FriendsListsActivity;

    invoke-static {v1}, Lcom/perm/kate/FriendsListsActivity;->access$000(Lcom/perm/kate/FriendsListsActivity;)Lcom/perm/kate/tabs/TabsInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    iget v1, v1, Lcom/perm/kate/tabs/TabInfo;->title:I

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsListsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
