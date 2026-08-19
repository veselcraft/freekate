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

    .line 43
    iput-object p1, p0, Lcom/perm/kate/AddStickersActivity$1;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 46
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 49
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity$1;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v1}, Lcom/perm/kate/AddStickersActivity;->access$000(Lcom/perm/kate/AddStickersActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/AddStickersActivity$1;->this$0:Lcom/perm/kate/AddStickersActivity;

    const-string v1, "purchased"

    const-string v2, "stickers"

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getProducts(Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 56
    iget-object v0, p0, Lcom/perm/kate/AddStickersActivity$1;->this$0:Lcom/perm/kate/AddStickersActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
