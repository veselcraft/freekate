.class Lcom/perm/kate/NewsFragment$9;
.super Landroid/content/BroadcastReceiver;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 507
    const-string v0, "NewsFragment"

    const-string v1, "Broadcast received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 509
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v0}, Lcom/perm/kate/NewsFragment;->access$100(Lcom/perm/kate/NewsFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v0}, Lcom/perm/kate/NewsFragment;->access$100(Lcom/perm/kate/NewsFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 511
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    .line 512
    :cond_1
    return-void
.end method
