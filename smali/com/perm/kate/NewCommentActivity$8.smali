.class Lcom/perm/kate/NewCommentActivity$8;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$8;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 340
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 341
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$8;->this$0:Lcom/perm/kate/NewCommentActivity;

    const-class v1, Lcom/perm/kate/AttachmentsActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "com.perm.kate.comment_attachments"

    const/4 v1, 0x1

    .line 342
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$8;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
