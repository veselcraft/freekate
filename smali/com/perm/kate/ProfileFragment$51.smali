.class Lcom/perm/kate/ProfileFragment$51;
.super Lcom/perm/kate/session/Callback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileFragment;->faveRemoveUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$51;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$51;->this$0:Lcom/perm/kate/ProfileFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    .line 1785
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1773
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$51;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1781
    :cond_0
    :goto_0
    return-void

    .line 1775
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$51;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1, v3}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    move-object v0, p1

    .line 1776
    check-cast v0, Ljava/lang/Integer;

    .line 1777
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1778
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$51;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileFragment;->access$502(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1779
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$51;->this$0:Lcom/perm/kate/ProfileFragment;

    const v2, 0x7f07049c

    invoke-virtual {v1, v2}, Lcom/perm/kate/ProfileFragment;->displayToast(I)V

    goto :goto_0
.end method
