.class Lcom/perm/kate/Helper$4;
.super Ljava/lang/Thread;
.source "Helper.java"


# instance fields
.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$domain_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/perm/kate/Helper$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/perm/kate/Helper$4;->val$domain_name:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/Helper$4;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 589
    iget-object v0, p0, Lcom/perm/kate/Helper$4;->val$context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 590
    :goto_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/Helper$4;->val$domain_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/Helper$4;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1, v2, v3, v0}, Lcom/perm/kate/session/Session;->resolveScreenName(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
