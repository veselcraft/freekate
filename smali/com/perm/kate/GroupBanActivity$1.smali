.class Lcom/perm/kate/GroupBanActivity$1;
.super Lcom/perm/kate/session/Callback;
.source "GroupBanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBanActivity;->getBannedStatusForUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBanActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBanActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupBanActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$1;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$1;->this$0:Lcom/perm/kate/GroupBanActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupBanActivity;->showProgressBar(Z)V

    .line 96
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity$1;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v1, v3}, Lcom/perm/kate/GroupBanActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 89
    check-cast v0, Ljava/util/ArrayList;

    .line 90
    .local v0, "_items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GroupBanItem;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity$1;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/GroupBanItem;

    invoke-static {v2, v1}, Lcom/perm/kate/GroupBanActivity;->access$000(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/api/GroupBanItem;)V

    .line 92
    :cond_0
    return-void
.end method
