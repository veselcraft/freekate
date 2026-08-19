.class Lcom/perm/kate/MessagesFragment$11;
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

    .line 484
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "Kate.MessagesFragment"

    const-string p2, "Broadcast received"

    .line 487
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    iget-object p1, p1, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    if-nez p1, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    .line 493
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment$11;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {p1}, Lcom/perm/kate/MessagesFragment;->access$1300(Lcom/perm/kate/MessagesFragment;)V

    return-void
.end method
