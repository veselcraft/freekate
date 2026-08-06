.class Lcom/perm/kate/GroupBanActivity$6;
.super Lcom/perm/kate/session/Callback;
.source "GroupBanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupBanActivity;
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
    .line 198
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 212
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupBanActivity;->showProgressBar(Z)V

    .line 213
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$1400(Lcom/perm/kate/GroupBanActivity;)V

    .line 214
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 201
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 202
    .local v0, "success":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupBanActivity;->showProgressBar(Z)V

    .line 203
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupBanActivity;->access$1300(Lcom/perm/kate/GroupBanActivity;)V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupBanActivity;->access$1400(Lcom/perm/kate/GroupBanActivity;)V

    goto :goto_0
.end method
