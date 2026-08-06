.class Lcom/perm/kate/RequestsFriendsFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "RequestsFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/RequestsFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsFriendsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/RequestsFriendsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 97
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/RequestsFriendsFragment;->access$300(Lcom/perm/kate/RequestsFriendsFragment;)V

    .line 98
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/RequestsFriendsFragment;->access$400(Lcom/perm/kate/RequestsFriendsFragment;)V

    .line 99
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/RequestsFriendsFragment;->access$100(Lcom/perm/kate/RequestsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/perm/kate/RequestsFriendsFragment;->access$102(Lcom/perm/kate/RequestsFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    move-object v0, p1

    .line 85
    check-cast v0, Ljava/util/ArrayList;

    .line 86
    .local v0, "users2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/RequestsFriendsFragment;->access$100(Lcom/perm/kate/RequestsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v1, v0}, Lcom/perm/kate/RequestsFriendsFragment;->access$200(Lcom/perm/kate/RequestsFriendsFragment;Ljava/util/ArrayList;)V

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/RequestsFriendsFragment;->access$300(Lcom/perm/kate/RequestsFriendsFragment;)V

    .line 91
    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment$3;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/RequestsFriendsFragment;->access$400(Lcom/perm/kate/RequestsFriendsFragment;)V

    .line 92
    return-void
.end method
