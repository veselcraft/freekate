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
    .param p1, "this$0"    # Lcom/perm/kate/SyncActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 75
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v1

    iget-object v0, v1, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    .line 76
    .local v0, "account_name":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    iget-object v1, v1, Lcom/perm/kate/SyncActivity;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-static {v1}, Lcom/perm/kate/SyncActivity;->access$000(Lcom/perm/kate/SyncActivity;)V

    .line 78
    iget-object v1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    iget-object v1, v1, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-static {v1, v2, v0}, Lcom/perm/kate/sync/SyncLogic;->ensureAccountExists(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-virtual {v1}, Lcom/perm/kate/SyncActivity;->finish()V

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    iget-object v1, v1, Lcom/perm/kate/SyncActivity;->user_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-static {v1, v2}, Lcom/perm/kate/sync/SyncLogic;->accountExists(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-static {v1}, Lcom/perm/kate/SyncActivity;->access$100(Lcom/perm/kate/SyncActivity;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/SyncActivity$1;->this$0:Lcom/perm/kate/SyncActivity;

    invoke-virtual {v1}, Lcom/perm/kate/SyncActivity;->finish()V

    goto :goto_0
.end method
