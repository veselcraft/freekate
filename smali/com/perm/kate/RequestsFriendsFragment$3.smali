.class Lcom/perm/kate/RequestsFriendsFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "RequestsFriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsFriendsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 97
    iget-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/RequestsFriendsFragment;->access$300(Lcom/perm/kate/RequestsFriendsFragment;)V

    .line 98
    iget-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/RequestsFriendsFragment;->access$400(Lcom/perm/kate/RequestsFriendsFragment;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/RequestsFriendsFragment;->access$100(Lcom/perm/kate/RequestsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/perm/kate/RequestsFriendsFragment;->access$102(Lcom/perm/kate/RequestsFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 85
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/RequestsFriendsFragment;->access$100(Lcom/perm/kate/RequestsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/RequestsFriendsFragment;->access$200(Lcom/perm/kate/RequestsFriendsFragment;Ljava/util/ArrayList;)V

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/RequestsFriendsFragment;->access$300(Lcom/perm/kate/RequestsFriendsFragment;)V

    .line 91
    iget-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/RequestsFriendsFragment;->access$400(Lcom/perm/kate/RequestsFriendsFragment;)V

    return-void
.end method
