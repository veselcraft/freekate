.class Lcom/perm/kate/WallPostActivity$6;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$6;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 638
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 639
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$6;->this$0:Lcom/perm/kate/WallPostActivity;

    const-class v2, Lcom/perm/kate/AttachmentsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 640
    const-string v1, "com.perm.kate.is_message_attachments"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 641
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$6;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/WallPostActivity;->startActivity(Landroid/content/Intent;)V

    .line 642
    return-void
.end method
