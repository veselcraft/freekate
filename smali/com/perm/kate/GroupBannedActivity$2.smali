.class Lcom/perm/kate/GroupBannedActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "GroupBannedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupBannedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBannedActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupBannedActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 80
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 81
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupBannedActivity;->showProgressBar(Z)V

    .line 82
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 69
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 70
    .local v0, "_items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GroupBanItem;>;"
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/GroupBannedActivity;->access$202(Lcom/perm/kate/GroupBannedActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupBannedActivity;->access$300(Lcom/perm/kate/GroupBannedActivity;)V

    .line 75
    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupBannedActivity;->showProgressBar(Z)V

    .line 76
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupBannedActivity;->access$200(Lcom/perm/kate/GroupBannedActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
