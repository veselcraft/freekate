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

    .line 85
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$1;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$1;->this$0:Lcom/perm/kate/GroupBanActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$1;->this$0:Lcom/perm/kate/GroupBanActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 90
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$1;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/GroupBanItem;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupBanActivity;->access$000(Lcom/perm/kate/GroupBanActivity;Lcom/perm/kate/api/GroupBanItem;)V

    :cond_0
    return-void
.end method
