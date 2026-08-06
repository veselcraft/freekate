.class Lcom/perm/kate/GroupBannedActivity$6;
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
    .line 171
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$6;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 180
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$6;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupBannedActivity;->showProgressBar(Z)V

    .line 181
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 182
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$6;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-virtual {v0}, Lcom/perm/kate/GroupBannedActivity;->refreshInThread()V

    .line 183
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$6;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupBannedActivity;->showProgressBar(Z)V

    .line 175
    return-void
.end method
