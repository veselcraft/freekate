.class Lcom/perm/kate/RequestsFriendsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "RequestsFriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsFriendsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$2;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 69
    iget-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$2;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-virtual {p1}, Lcom/perm/kate/RequestsFriendsFragment;->secondStep()V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment$2;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/RequestsFriendsFragment;->access$102(Lcom/perm/kate/RequestsFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 63
    iget-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$2;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-virtual {p1}, Lcom/perm/kate/RequestsFriendsFragment;->secondStep()V

    return-void
.end method
