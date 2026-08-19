.class Lcom/perm/kate/NewsFragment$9;
.super Landroid/content/BroadcastReceiver;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "NewsFragment"

    const-string p2, "Broadcast received"

    .line 507
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object p1, p1, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    .line 509
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {p1}, Lcom/perm/kate/NewsFragment;->access$100(Lcom/perm/kate/NewsFragment;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {p1}, Lcom/perm/kate/NewsFragment;->access$100(Lcom/perm/kate/NewsFragment;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 510
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object p1, p1, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const/16 p2, 0x64

    if-ge p1, p2, :cond_1

    .line 511
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$9;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    :cond_1
    return-void
.end method
