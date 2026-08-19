.class Lcom/perm/kate/NewCommentActivity$15;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity;->photoAttachmentsUploaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;

.field final synthetic val$attachment:Ljava/lang/String;

.field final synthetic val$uploaded_photo:Lcom/perm/kate/api/Photo;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;Ljava/lang/String;Lcom/perm/kate/api/Photo;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$15;->this$0:Lcom/perm/kate/NewCommentActivity;

    iput-object p2, p0, Lcom/perm/kate/NewCommentActivity$15;->val$attachment:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/NewCommentActivity$15;->val$uploaded_photo:Lcom/perm/kate/api/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 629
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$15;->val$attachment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$15;->val$uploaded_photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-static {}, Lcom/perm/kate/AttachmentsActivity;->attachmentsChanged()V

    .line 632
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$15;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$2300(Lcom/perm/kate/NewCommentActivity;)V

    .line 633
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$15;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f012c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
