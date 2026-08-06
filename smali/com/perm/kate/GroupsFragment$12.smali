.class Lcom/perm/kate/GroupsFragment$12;
.super Lcom/perm/kate/session/Callback;
.source "GroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$12;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$12;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupsFragment;->showProgressBar(Z)V

    .line 316
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 317
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment$12;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupsFragment;->showProgressBar(Z)V

    move-object v0, p1

    .line 305
    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, "response":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment$12;->this$0:Lcom/perm/kate/GroupsFragment;

    const v2, 0x7f0704b8

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupsFragment;->displayToast(I)V

    .line 309
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment$12;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/GroupsFragment;->refreshInThread()V

    .line 311
    :cond_0
    return-void
.end method
