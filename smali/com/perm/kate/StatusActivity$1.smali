.class Lcom/perm/kate/StatusActivity$1;
.super Ljava/lang/Thread;
.source "StatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StatusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StatusActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatusActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$1;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 51
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/StatusActivity$1;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-static {v1}, Lcom/perm/kate/StatusActivity;->access$000(Lcom/perm/kate/StatusActivity;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/StatusActivity$1;->this$0:Lcom/perm/kate/StatusActivity;

    iget-object v3, v2, Lcom/perm/kate/StatusActivity;->callback:Lcom/perm/kate/session/Callback;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/perm/kate/session/Session;->getStatus(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
