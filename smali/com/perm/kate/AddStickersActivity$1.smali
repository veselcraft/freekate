.class Lcom/perm/kate/AddStickersActivity$1;
.super Ljava/lang/Thread;
.source "AddStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AddStickersActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AddStickersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AddStickersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AddStickersActivity;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/perm/kate/AddStickersActivity$1;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 46
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v1, "purchased"

    const-string v2, "stickers"

    iget-object v4, p0, Lcom/perm/kate/AddStickersActivity$1;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v4}, Lcom/perm/kate/AddStickersActivity;->access$000(Lcom/perm/kate/AddStickersActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/AddStickersActivity$1;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getProducts(Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 52
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v1, "free"

    const-string v2, "stickers"

    iget-object v4, p0, Lcom/perm/kate/AddStickersActivity$1;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v4}, Lcom/perm/kate/AddStickersActivity;->access$100(Lcom/perm/kate/AddStickersActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/AddStickersActivity$1;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getStockItems(Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
