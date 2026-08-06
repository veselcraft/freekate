.class Lcom/perm/kate/EditGroupLinkActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "EditGroupLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditGroupLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupLinkActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupLinkActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditGroupLinkActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$3;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$3;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditGroupLinkActivity;->showProgressBar(Z)V

    .line 83
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$3;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupLinkActivity;->access$500(Lcom/perm/kate/EditGroupLinkActivity;)V

    .line 84
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity$3;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/EditGroupLinkActivity;->showProgressBar(Z)V

    .line 74
    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity$3;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupLinkActivity;->access$500(Lcom/perm/kate/EditGroupLinkActivity;)V

    move-object v0, p1

    .line 75
    check-cast v0, Ljava/lang/Integer;

    .line 76
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/perm/kate/EditGroupLinkActivity$3;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v1}, Lcom/perm/kate/EditGroupLinkActivity;->access$600(Lcom/perm/kate/EditGroupLinkActivity;)V

    .line 79
    :cond_0
    return-void
.end method
