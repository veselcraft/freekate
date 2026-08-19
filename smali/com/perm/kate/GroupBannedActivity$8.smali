.class Lcom/perm/kate/GroupBannedActivity$8;
.super Ljava/lang/Object;
.source "GroupBannedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBannedActivity;->showGroupBlockActivity(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBannedActivity;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedActivity;J)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$8;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iput-wide p2, p0, Lcom/perm/kate/GroupBannedActivity$8;->val$user_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$8;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const-class v2, Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$8;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupBannedActivity;->access$000(Lcom/perm/kate/GroupBannedActivity;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 266
    iget-wide v1, p0, Lcom/perm/kate/GroupBannedActivity$8;->val$user_id:J

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$8;->this$0:Lcom/perm/kate/GroupBannedActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
