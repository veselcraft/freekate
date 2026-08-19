.class Lcom/perm/kate/LoginActivity2$7;
.super Ljava/lang/Thread;
.source "LoginActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LoginActivity2;->checkTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LoginActivity2;


# direct methods
.method constructor <init>(Lcom/perm/kate/LoginActivity2;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 249
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 251
    iget-object v2, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {v2}, Lcom/perm/kate/LoginActivity2;->getCorrectTime()J

    move-result-wide v2

    .line 252
    iget-object v4, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 253
    iget-object v4, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v2, v0

    .line 255
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x28de80

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 256
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-static {v0}, Lcom/perm/kate/LoginActivity2;->access$200(Lcom/perm/kate/LoginActivity2;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-static {v0}, Lcom/perm/kate/LoginActivity2;->access$300(Lcom/perm/kate/LoginActivity2;)V

    :goto_0
    return-void
.end method
