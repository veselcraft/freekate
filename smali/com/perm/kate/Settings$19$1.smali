.class Lcom/perm/kate/Settings$19$1;
.super Lcom/perm/kate/session/Callback;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Settings$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/Settings$19;

.field final synthetic val$session:Lcom/perm/kate/session/Session;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$19;Landroid/app/Activity;Lcom/perm/kate/session/Session;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/Settings$19;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/perm/kate/Settings$19$1;->this$1:Lcom/perm/kate/Settings$19;

    iput-object p3, p0, Lcom/perm/kate/Settings$19$1;->val$session:Lcom/perm/kate/session/Session;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/perm/kate/Settings$19$1;->val$session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/perm/kate/account/Account;->push_registered:Z

    .line 595
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 596
    return-void
.end method
