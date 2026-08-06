.class Lcom/my/target/ads/MyTargetActivity$CloseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyTargetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/ads/MyTargetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/ads/MyTargetActivity;


# direct methods
.method private constructor <init>(Lcom/my/target/ads/MyTargetActivity;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/my/target/ads/MyTargetActivity$CloseReceiver;->this$0:Lcom/my/target/ads/MyTargetActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/my/target/ads/MyTargetActivity;Lcom/my/target/ads/MyTargetActivity$1;)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/my/target/ads/MyTargetActivity$CloseReceiver;-><init>(Lcom/my/target/ads/MyTargetActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.my.target.ACTION_CLOSE_ACTIVITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "finishing MyTargetActivity because of broadcast"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/my/target/ads/MyTargetActivity$CloseReceiver;->this$0:Lcom/my/target/ads/MyTargetActivity;

    invoke-virtual {v0}, Lcom/my/target/ads/MyTargetActivity;->finish()V

    .line 342
    :cond_0
    return-void
.end method
