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

    .line 209
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 223
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 224
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$1400(Lcom/perm/kate/GroupBanActivity;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 212
    check-cast p1, Ljava/lang/Boolean;

    .line 213
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 214
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$1300(Lcom/perm/kate/GroupBanActivity;)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupBanActivity$6;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupBanActivity;->access$1400(Lcom/perm/kate/GroupBanActivity;)V

    :goto_0
    return-void
.end method
