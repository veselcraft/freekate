.class Lcom/perm/kate/BannedActivity$1;
.super Ljava/lang/Thread;
.source "BannedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BannedActivity;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BannedActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BannedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BannedActivity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/perm/kate/BannedActivity$1;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/BannedActivity$1;->this$0:Lcom/perm/kate/BannedActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BannedActivity;->showProgressBar(Z)V

    .line 44
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/BannedActivity$1;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {v3}, Lcom/perm/kate/BannedActivity;->access$000(Lcom/perm/kate/BannedActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/BannedActivity$1;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getBanned(ZLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 45
    return-void
.end method
