.class Lcom/perm/kate/SyncActivity$1;
.super Ljava/lang/Object;
.source "SyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SyncActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 80
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    iget-object v0, v0, Lcom/perm/kate/SyncActivity;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-static {v0}, Lcom/perm/kate/SyncActivity;->access$000(Lcom/perm/kate/SyncActivity;)V

    .line 83
    iget-object v0, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    iget-object v1, v0, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/perm/kate/sync/SyncLogic;->ensureAccountExists(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    iget-object v0, p1, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/perm/kate/sync/SyncLogic;->accountExists(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-static {p1}, Lcom/perm/kate/SyncActivity;->access$100(Lcom/perm/kate/SyncActivity;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
