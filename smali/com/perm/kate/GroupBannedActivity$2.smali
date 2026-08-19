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

    .line 65
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 80
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 81
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 69
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupBannedActivity;->access$202(Lcom/perm/kate/GroupBannedActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBannedActivity;->access$200(Lcom/perm/kate/GroupBannedActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBannedActivity;->access$300(Lcom/perm/kate/GroupBannedActivity;)V

    .line 75
    iget-object p1, p0, Lcom/perm/kate/GroupBannedActivity$2;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
