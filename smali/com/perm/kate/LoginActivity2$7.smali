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
    .param p1, "this$0"    # Lcom/perm/kate/LoginActivity2;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 237
    iget-object v4, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/perm/kate/LoginActivity2;->showProgressBar(Z)V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 239
    .local v2, "now":J
    iget-object v4, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {v4}, Lcom/perm/kate/LoginActivity2;->getCorrectTime()J

    move-result-wide v0

    .line 240
    .local v0, "correct":J
    iget-object v4, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/perm/kate/LoginActivity2;->showProgressBar(Z)V

    .line 241
    iget-object v4, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-virtual {v4}, Lcom/perm/kate/LoginActivity2;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    sub-long v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x28de80

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 244
    iget-object v4, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-static {v4}, Lcom/perm/kate/LoginActivity2;->access$200(Lcom/perm/kate/LoginActivity2;)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v4, p0, Lcom/perm/kate/LoginActivity2$7;->this$0:Lcom/perm/kate/LoginActivity2;

    invoke-static {v4}, Lcom/perm/kate/LoginActivity2;->access$300(Lcom/perm/kate/LoginActivity2;)V

    goto :goto_0
.end method
