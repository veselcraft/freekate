.class Lcom/perm/kate/GroupMembersActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "GroupMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupMembersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupMembersActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupMembersActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 105
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/GroupMembersActivity;->access$602(Lcom/perm/kate/GroupMembersActivity;I)I

    .line 106
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupMembersActivity;->showProgressBar(Z)V

    .line 107
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 91
    check-cast v0, Ljava/util/ArrayList;

    .line 92
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupMembersActivity;->showProgressBar(Z)V

    .line 93
    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/GroupMembersActivity;->access$502(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupMembersActivity;->access$500(Lcom/perm/kate/GroupMembersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v1, v2}, Lcom/perm/kate/GroupMembersActivity;->access$602(Lcom/perm/kate/GroupMembersActivity;I)I

    .line 99
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupMembersActivity;->access$500(Lcom/perm/kate/GroupMembersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/GroupMembersActivity;->access$700(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/perm/kate/GroupMembersActivity;->access$602(Lcom/perm/kate/GroupMembersActivity;I)I

    goto :goto_1
.end method
