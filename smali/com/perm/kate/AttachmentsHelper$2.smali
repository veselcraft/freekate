.class Lcom/perm/kate/AttachmentsHelper$2;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$2;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 855
    const v4, 0x7f0e01ce

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 856
    .local v2, "poll_id":Ljava/lang/Long;
    const v4, 0x7f0e0067

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 857
    .local v1, "owner_id":Ljava/lang/Long;
    const v4, 0x7f0e01a7

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 858
    .local v3, "topic_id":Ljava/lang/Long;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 859
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$2;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v4, v4, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const-class v5, Lcom/perm/kate/PollActivity;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 860
    const-string v4, "com.perm.kate.poll_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 861
    const-string v4, "com.perm.kate.owner_id"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 862
    const-string v4, "com.perm.kate.topic_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 863
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$2;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v4, v4, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v4, v0}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 864
    return-void
.end method
