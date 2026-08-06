.class Lcom/perm/kate/FriendsListsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FriendsListsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsListsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsListsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/perm/kate/FriendsListsFragment$2;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment$2;->this$0:Lcom/perm/kate/FriendsListsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsListsFragment;->showProgressBar(Z)V

    .line 62
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment$2;->this$0:Lcom/perm/kate/FriendsListsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsListsFragment;->showProgressBar(Z)V

    .line 56
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment$2;->this$0:Lcom/perm/kate/FriendsListsFragment;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/perm/kate/FriendsListsFragment;->access$102(Lcom/perm/kate/FriendsListsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 57
    iget-object v0, p0, Lcom/perm/kate/FriendsListsFragment$2;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-static {v0}, Lcom/perm/kate/FriendsListsFragment;->access$200(Lcom/perm/kate/FriendsListsFragment;)V

    .line 58
    return-void
.end method
