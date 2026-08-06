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
    .param p1, "this$0"    # Lcom/perm/kate/GroupBanActivity;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 304
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupBanActivity;->access$200(Lcom/perm/kate/GroupBanActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 307
    const-string v1, "com.perm.kate.ban_info"

    iget-object v2, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupBanActivity;->access$1100(Lcom/perm/kate/GroupBanActivity;)Lcom/perm/kate/api/BanInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v1, v4, v0}, Lcom/perm/kate/GroupBanActivity;->setResult(ILandroid/content/Intent;)V

    .line 311
    .end local v0    # "data":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v1}, Lcom/perm/kate/GroupBanActivity;->finish()V

    .line 312
    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupBanActivity$9;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-virtual {v1, v4}, Lcom/perm/kate/GroupBanActivity;->setResult(I)V

    goto :goto_0
.end method
