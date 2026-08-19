.class Lcom/perm/kate/EditGroupLinkActivity$5;
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

    .line 108
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$5;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$5;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 122
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$5;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupLinkActivity;->access$500(Lcom/perm/kate/EditGroupLinkActivity;)V

    .line 123
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$5;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 112
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$5;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupLinkActivity;->access$500(Lcom/perm/kate/EditGroupLinkActivity;)V

    .line 113
    check-cast p1, Lcom/perm/kate/api/Link;

    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/perm/kate/EditGroupLinkActivity$5;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/EditGroupLinkActivity;->access$002(Lcom/perm/kate/EditGroupLinkActivity;Lcom/perm/kate/api/Link;)Lcom/perm/kate/api/Link;

    .line 116
    iget-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$5;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupLinkActivity;->access$600(Lcom/perm/kate/EditGroupLinkActivity;)V

    :cond_0
    return-void
.end method
