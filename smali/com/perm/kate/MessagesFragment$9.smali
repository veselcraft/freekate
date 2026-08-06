.class Lcom/perm/kate/MessagesFragment$9;
.super Landroid/content/BroadcastReceiver;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$9;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 372
    const-string v0, "Kate.MessagesFragment"

    const-string v1, "Broadcast received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$9;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$9;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object v0, v0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 378
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$9;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v0}, Lcom/perm/kate/MessagesFragment;->access$1200(Lcom/perm/kate/MessagesFragment;)V

    goto :goto_0
.end method
