.class Lcom/perm/kate/AttachmentsHelper$16;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1600
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$16;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v0, 0x3e8

    .line 1605
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper$16;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v2}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper$16;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v3, v2, Lcom/perm/kate/AttachmentsHelper;->handler:Landroid/os/Handler;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsHelper;->task:Ljava/lang/Runnable;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/perm/kate/AttachmentsHelper$16;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v4, v3, Lcom/perm/kate/AttachmentsHelper;->handler:Landroid/os/Handler;

    iget-object v3, v3, Lcom/perm/kate/AttachmentsHelper;->task:Ljava/lang/Runnable;

    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1608
    throw v2
.end method
