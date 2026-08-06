.class final Lcom/perm/kate/Helper$3;
.super Ljava/lang/Thread;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Helper;->resolveScreenName(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$domain_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/perm/kate/Helper$3;->val$domain_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/perm/kate/Helper$3;->val$callback:Lcom/perm/kate/session/Callback;

    iput-object p3, p0, Lcom/perm/kate/Helper$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 478
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/Helper$3;->val$domain_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/Helper$3;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/Helper$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v2, v3, v0}, Lcom/perm/kate/session/Session;->resolveScreenName(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 479
    return-void
.end method
