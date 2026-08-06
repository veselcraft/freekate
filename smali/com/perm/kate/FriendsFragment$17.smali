.class Lcom/perm/kate/FriendsFragment$17;
.super Lcom/perm/kate/session/Callback;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$17;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 700
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 701
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$17;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    .line 702
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 693
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$17;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    move-object v0, p1

    .line 694
    check-cast v0, Ljava/util/ArrayList;

    .line 695
    .local v0, "friends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$17;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v1, v0}, Lcom/perm/kate/FriendsFragment;->access$2000(Lcom/perm/kate/FriendsFragment;Ljava/util/ArrayList;)V

    .line 696
    return-void
.end method
