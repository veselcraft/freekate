.class Lcom/perm/kate/EditChatActivity$24;
.super Lcom/perm/kate/session/Callback;
.source "EditChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditChatActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$24;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 477
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$24;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditChatActivity;->showProgressBar(Z)V

    .line 478
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 466
    move-object v6, p1

    check-cast v6, Ljava/lang/Long;

    .line 467
    .local v6, "res":Ljava/lang/Long;
    if-eqz v6, :cond_0

    .line 468
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$24;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0, v7}, Lcom/perm/kate/EditChatActivity;->access$602(Lcom/perm/kate/EditChatActivity;Z)Z

    .line 469
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/EditChatActivity$24;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v1}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/EditChatActivity$24;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v4}, Lcom/perm/kate/EditChatActivity;->access$100(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->updateChatPhoto(JLjava/lang/String;J)V

    .line 470
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$24;->this$0:Lcom/perm/kate/EditChatActivity;

    const v1, 0x7f0704a4

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditChatActivity;->displayToast(I)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$24;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-virtual {v0, v7}, Lcom/perm/kate/EditChatActivity;->showProgressBar(Z)V

    .line 473
    return-void
.end method
