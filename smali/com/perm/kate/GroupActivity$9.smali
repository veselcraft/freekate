.class Lcom/perm/kate/GroupActivity$9;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$9;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 519
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$9;->this$0:Lcom/perm/kate/GroupActivity;

    const-class v2, Lcom/perm/kate/MarketAlbumsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 520
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity$9;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/perm/kate/GroupActivity$9;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 522
    return-void
.end method
