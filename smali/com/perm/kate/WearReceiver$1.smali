.class Lcom/perm/kate/WearReceiver$1;
.super Ljava/lang/Thread;
.source "WearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$peer_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/WearReceiver;J)V
    .locals 0

    .line 30
    iput-wide p2, p0, Lcom/perm/kate/WearReceiver$1;->val$peer_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 33
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    iget-wide v1, p0, Lcom/perm/kate/WearReceiver$1;->val$peer_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/perm/kate/session/Session;->markAsRead(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
