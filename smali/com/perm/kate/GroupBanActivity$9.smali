.class Lcom/perm/kate/GroupBanActivity$9;
.super Ljava/lang/Object;
.source "GroupBanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBanActivity;->finishOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBanActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBanActivity;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 315
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupBanActivity;->access$200(Lcom/perm/kate/GroupBanActivity;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 318
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object v2

    const-string v3, "com.perm.kate.ban_info"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 319
    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v2, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 322
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
