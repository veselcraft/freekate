.class Lcom/perm/kate/AttachmentsHelper$13;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1284
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$13;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1288
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$13;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1291
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1301
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$13;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v1, p1}, Lcom/perm/kate/AttachmentsHelper;->access$100(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "messages"

    .line 1303
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1304
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$13;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1306
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 1307
    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
