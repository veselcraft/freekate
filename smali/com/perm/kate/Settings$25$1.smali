.class Lcom/perm/kate/Settings$25$1;
.super Lcom/perm/kate/session/Callback;
.source "Settings.java"


# instance fields
.field final synthetic val$session:Lcom/perm/kate/session/Session;


# direct methods
.method constructor <init>(Lcom/perm/kate/Settings$25;Landroid/app/Activity;Lcom/perm/kate/session/Session;)V
    .locals 0

    .line 723
    iput-object p3, p0, Lcom/perm/kate/Settings$25$1;->val$session:Lcom/perm/kate/session/Session;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 726
    iget-object p1, p0, Lcom/perm/kate/Settings$25$1;->val$session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getAccount()Lcom/perm/kate/account/Account;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/perm/kate/account/Account;->push_registered:Z

    .line 727
    sget-object p1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {p1}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    return-void
.end method
