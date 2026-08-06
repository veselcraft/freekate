.class Lcom/perm/kate/FaveLinksFragment$8;
.super Lcom/perm/kate/session/Callback;
.source "FaveLinksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveLinksFragment;->faveAddLink(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveLinksFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$8;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$8;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FaveLinksFragment;->showProgressBar(Z)V

    .line 218
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$8;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$8;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/FaveLinksFragment;->showProgressBar(Z)V

    move-object v0, p1

    .line 209
    check-cast v0, Ljava/lang/Integer;

    .line 210
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 211
    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$8;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const v2, 0x7f07049b

    invoke-virtual {v1, v2}, Lcom/perm/kate/FaveLinksFragment;->displayToast(I)V

    .line 212
    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$8;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FaveLinksFragment;->refreshInThread()V

    goto :goto_0
.end method
