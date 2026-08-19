.class Lcom/perm/kate/account/AccountManager$1$1;
.super Lcom/perm/kate/session/Callback;
.source "AccountManager.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/account/AccountManager$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/account/AccountManager$1;Landroid/app/Activity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/perm/kate/account/AccountManager$1$1;->this$1:Lcom/perm/kate/account/AccountManager$1;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 67
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    .line 71
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p1, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 72
    iget-object v0, p0, Lcom/perm/kate/account/AccountManager$1$1;->this$1:Lcom/perm/kate/account/AccountManager$1;

    iget-object v0, v0, Lcom/perm/kate/account/AccountManager$1;->val$a:Lcom/perm/kate/account/Account;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/perm/kate/account/AccountManager$1$1;->this$1:Lcom/perm/kate/account/AccountManager$1;

    iget-object v1, v0, Lcom/perm/kate/account/AccountManager$1;->val$a:Lcom/perm/kate/account/Account;

    iget-object p1, p1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iput-object p1, v1, Lcom/perm/kate/account/Account;->profile_photo:Ljava/lang/String;

    .line 74
    iget-object p1, v0, Lcom/perm/kate/account/AccountManager$1;->this$0:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {p1}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    :cond_1
    :goto_0
    return-void
.end method
