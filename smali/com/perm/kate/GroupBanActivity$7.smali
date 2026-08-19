.class Lcom/perm/kate/GroupBanActivity$7;
.super Ljava/lang/Object;
.source "GroupBanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBanActivity;->enableButtonOnUiThread()V
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

    .line 229
    iput-object p1, p0, Lcom/perm/kate/GroupBanActivity$7;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$7;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$900(Lcom/perm/kate/GroupBanActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 233
    iget-object v0, p0, Lcom/perm/kate/GroupBanActivity$7;->this$0:Lcom/perm/kate/GroupBanActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBanActivity;->access$1000(Lcom/perm/kate/GroupBanActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
