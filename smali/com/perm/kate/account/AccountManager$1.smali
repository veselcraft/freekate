.class Lcom/perm/kate/account/AccountManager$1;
.super Ljava/lang/Thread;
.source "AccountManager.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/account/AccountManager;

.field final synthetic val$a:Lcom/perm/kate/account/Account;


# direct methods
.method constructor <init>(Lcom/perm/kate/account/AccountManager;Lcom/perm/kate/account/Account;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/perm/kate/account/AccountManager$1;->this$0:Lcom/perm/kate/account/AccountManager;

    iput-object p2, p0, Lcom/perm/kate/account/AccountManager$1;->val$a:Lcom/perm/kate/account/Account;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/perm/kate/account/AccountManager$1;->val$a:Lcom/perm/kate/account/Account;

    iget-object v0, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v5, Lcom/perm/kate/account/AccountManager$1$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/perm/kate/account/AccountManager$1$1;-><init>(Lcom/perm/kate/account/AccountManager$1;Landroid/app/Activity;)V

    .line 81
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v3, "first_name,last_name,photo_100,sex,bdate"

    const-string v4, "nom"

    .line 84
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
