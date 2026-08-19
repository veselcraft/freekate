.class Lcom/perm/kate/Helper$6;
.super Ljava/lang/Thread;
.source "Helper.java"


# instance fields
.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$photo:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/perm/kate/Helper$6;->val$photo:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/kate/Helper$6;->val$callback:Lcom/perm/kate/session/Callback;

    iput-object p3, p0, Lcom/perm/kate/Helper$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 617
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/Helper$6;->val$photo:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/Helper$6;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v2, p0, Lcom/perm/kate/Helper$6;->val$context:Landroid/content/Context;

    move-object v5, v2

    check-cast v5, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
