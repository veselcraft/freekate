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

    .line 544
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$9;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 547
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 548
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$9;->this$0:Lcom/perm/kate/GroupActivity;

    const-class v1, Lcom/perm/kate/MarketAlbumsActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 549
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$9;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 550
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$9;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
