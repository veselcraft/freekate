.class Lcom/perm/kate/GroupMembersActivity$8;
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

    .line 232
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity$8;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 251
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$8;->this$0:Lcom/perm/kate/GroupMembersActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/GroupMembersActivity;->access$602(Lcom/perm/kate/GroupMembersActivity;I)I

    .line 252
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$8;->this$0:Lcom/perm/kate/GroupMembersActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$8;->this$0:Lcom/perm/kate/GroupMembersActivity;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 238
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .line 239
    invoke-static {v0}, Lcom/perm/kate/GroupMembersActivity;->access$500(Lcom/perm/kate/GroupMembersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 240
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity$8;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupMembersActivity;->access$500(Lcom/perm/kate/GroupMembersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/GroupMembersActivity;->access$700(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)V

    .line 241
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 242
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$8;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/GroupMembersActivity;->access$602(Lcom/perm/kate/GroupMembersActivity;I)I

    goto :goto_0

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$8;->this$0:Lcom/perm/kate/GroupMembersActivity;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/perm/kate/GroupMembersActivity;->access$602(Lcom/perm/kate/GroupMembersActivity;I)I

    .line 245
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/GroupMembersActivity$8;->this$0:Lcom/perm/kate/GroupMembersActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_2
    :goto_1
    return-void
.end method
