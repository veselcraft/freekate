.class Lcom/perm/kate/ProxyActivity$7;
.super Ljava/lang/Thread;
.source "ProxyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProxyActivity;->checkProxy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProxyActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProxyActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/perm/kate/ProxyActivity$7;->this$0:Lcom/perm/kate/ProxyActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "https://yandex.ru"

    .line 153
    invoke-static {v0}, Lcom/perm/utils/UkrBlockChecker;->checkUrlWithProxyOkHttp(Ljava/lang/String;)Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/perm/kate/ProxyActivity$7;->this$0:Lcom/perm/kate/ProxyActivity;

    new-instance v2, Lcom/perm/kate/ProxyActivity$7$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/ProxyActivity$7$1;-><init>(Lcom/perm/kate/ProxyActivity$7;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
