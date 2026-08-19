.class Lcom/perm/kate/GroupActivity$21;
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

    .line 676
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$21;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 679
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/GroupActivity$21;->this$0:Lcom/perm/kate/GroupActivity;

    const-class v1, Lcom/perm/kate/DocsActivity2;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 680
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$21;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    const-string v2, "owner_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 681
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$21;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
