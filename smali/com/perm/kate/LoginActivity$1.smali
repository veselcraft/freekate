.class Lcom/perm/kate/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LoginActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/perm/kate/LoginActivity$1;->this$0:Lcom/perm/kate/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/perm/kate/LoginActivity$1;->this$0:Lcom/perm/kate/LoginActivity;

    iget-object v1, v0, Lcom/perm/kate/LoginActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/LoginActivity;->access$000(Lcom/perm/kate/LoginActivity;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/perm/kate/LoginActivity$1;->this$0:Lcom/perm/kate/LoginActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/perm/kate/LoginActivity$1;->this$0:Lcom/perm/kate/LoginActivity;

    iget-object v1, v0, Lcom/perm/kate/LoginActivity;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/perm/kate/LoginActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
