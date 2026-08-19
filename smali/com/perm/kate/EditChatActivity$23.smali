.class Lcom/perm/kate/EditChatActivity$23;
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

    .line 494
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$23;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 507
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 508
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$23;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7

    .line 497
    check-cast p1, Ljava/lang/Long;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$23;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/EditChatActivity;->access$702(Lcom/perm/kate/EditChatActivity;Z)Z

    .line 500
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$23;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$200(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$23;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$100(Lcom/perm/kate/EditChatActivity;)J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->updateChatPhoto(JLjava/lang/String;J)V

    .line 501
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$23;->this$0:Lcom/perm/kate/EditChatActivity;

    const v1, 0x7f0f052e

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$23;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
