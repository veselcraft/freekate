.class Lcom/perm/kate/Helper$2;
.super Ljava/lang/Thread;
.source "Helper.java"


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/perm/kate/Helper$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/kate/Helper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/perm/kate/Helper$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->getLongUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/perm/kate/Helper$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/Helper$2;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/Helper$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
