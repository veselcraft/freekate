.class Lcom/perm/kate/Helper$12;
.super Ljava/lang/Thread;
.source "Helper.java"


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$link:Lcom/perm/kate/links/VkLink;

.field final synthetic val$profiles_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/links/VkLink;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V
    .locals 0

    .line 1564
    iput-object p1, p0, Lcom/perm/kate/Helper$12;->val$link:Lcom/perm/kate/links/VkLink;

    iput-object p2, p0, Lcom/perm/kate/Helper$12;->val$profiles_callback:Lcom/perm/kate/session/Callback;

    iput-object p3, p0, Lcom/perm/kate/Helper$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1567
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    iget-object v0, p0, Lcom/perm/kate/Helper$12;->val$link:Lcom/perm/kate/links/VkLink;

    iget-object v0, v0, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v5, p0, Lcom/perm/kate/Helper$12;->val$profiles_callback:Lcom/perm/kate/session/Callback;

    iget-object v1, p0, Lcom/perm/kate/Helper$12;->val$context:Landroid/content/Context;

    move-object v6, v1

    check-cast v6, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
