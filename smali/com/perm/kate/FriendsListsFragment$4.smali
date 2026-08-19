.class Lcom/perm/kate/FriendsListsFragment$4;
.super Ljava/lang/Object;
.source "FriendsListsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListsFragment;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/perm/kate/FriendsListsFragment$4;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 94
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 96
    iget-object p2, p0, Lcom/perm/kate/FriendsListsFragment$4;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/perm/kate/FriendsListsFragment;->access$400(Lcom/perm/kate/FriendsListsFragment;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
