.class final Lcom/perm/kate/Helper$11;
.super Ljava/lang/Thread;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->getUserIdFromLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$link:Lcom/perm/kate/links/VkLink;

.field final synthetic val$profiles_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/links/VkLink;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/perm/kate/Helper$11;->val$link:Lcom/perm/kate/links/VkLink;

    iput-object p2, p0, Lcom/perm/kate/Helper$11;->val$profiles_callback:Lcom/perm/kate/session/Callback;

    iput-object p3, p0, Lcom/perm/kate/Helper$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1427
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    .local v2, "domains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/perm/kate/Helper$11;->val$link:Lcom/perm/kate/links/VkLink;

    iget-object v0, v0, Lcom/perm/kate/links/VkLink;->domain:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1429
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v5, p0, Lcom/perm/kate/Helper$11;->val$profiles_callback:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/kate/Helper$11;->val$context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    move-object v3, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1430
    return-void
.end method
