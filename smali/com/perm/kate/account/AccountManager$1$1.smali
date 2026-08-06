.class Lcom/perm/kate/account/AccountManager$1$1;
.super Lcom/perm/kate/session/Callback;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/account/AccountManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/account/AccountManager$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/account/AccountManager$1;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/account/AccountManager$1;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/account/AccountManager$1$1;->this$1:Lcom/perm/kate/account/AccountManager$1;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 67
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 68
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 71
    .local v0, "u":Lcom/perm/kate/api/User;
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 72
    iget-object v2, p0, Lcom/perm/kate/account/AccountManager$1$1;->this$1:Lcom/perm/kate/account/AccountManager$1;

    iget-object v2, v2, Lcom/perm/kate/account/AccountManager$1;->val$a:Lcom/perm/kate/account/Account;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/perm/kate/account/AccountManager$1$1;->this$1:Lcom/perm/kate/account/AccountManager$1;

    iget-object v2, v2, Lcom/perm/kate/account/AccountManager$1;->val$a:Lcom/perm/kate/account/Account;

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iput-object v3, v2, Lcom/perm/kate/account/Account;->profile_photo:Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lcom/perm/kate/account/AccountManager$1$1;->this$1:Lcom/perm/kate/account/AccountManager$1;

    iget-object v2, v2, Lcom/perm/kate/account/AccountManager$1;->this$0:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v2}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    goto :goto_0
.end method
