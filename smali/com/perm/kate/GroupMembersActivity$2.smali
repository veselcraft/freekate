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

    .line 85
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 105
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/GroupMembersActivity;->access$602(Lcom/perm/kate/GroupMembersActivity;I)I

    .line 106
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupMembersActivity;->access$502(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupMembersActivity;->access$500(Lcom/perm/kate/GroupMembersActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {p1, v1}, Lcom/perm/kate/GroupMembersActivity;->access$602(Lcom/perm/kate/GroupMembersActivity;I)I

    goto :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/GroupMembersActivity;->access$602(Lcom/perm/kate/GroupMembersActivity;I)I

    .line 99
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$2;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupMembersActivity;->access$500(Lcom/perm/kate/GroupMembersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/GroupMembersActivity;->access$700(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)V

    return-void
.end method
