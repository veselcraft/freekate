.class Lcom/perm/kate/Helper$17;
.super Ljava/lang/Thread;
.source "Helper.java"


# instance fields
.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$str_stories:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lcom/perm/kate/Helper$17;->val$str_stories:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/kate/Helper$17;->val$callback:Lcom/perm/kate/session/Callback;

    iput-object p3, p0, Lcom/perm/kate/Helper$17;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1800
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/Helper$17;->val$str_stories:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/Helper$17;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/Helper$17;->val$context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->getStoriesById(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1801
    iget-object v0, p0, Lcom/perm/kate/Helper$17;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/perm/kate/Helper;->access$000(ZLandroid/content/Context;)V

    return-void
.end method
