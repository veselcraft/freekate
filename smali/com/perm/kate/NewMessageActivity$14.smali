.class Lcom/perm/kate/NewMessageActivity$14;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMessageActivity;->photoAttachmentsUploaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;

.field final synthetic val$attachment:Ljava/lang/String;

.field final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$14;->this$0:Lcom/perm/kate/NewMessageActivity;

    iput-object p2, p0, Lcom/perm/kate/NewMessageActivity$14;->val$attachment:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/NewMessageActivity$14;->val$photos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 713
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity$14;->val$attachment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity$14;->val$photos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-static {}, Lcom/perm/kate/AttachmentsActivity;->attachmentsChanged()V

    .line 716
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$14;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$2200(Lcom/perm/kate/NewMessageActivity;)V

    .line 717
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$14;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v0}, Lcom/perm/kate/NewMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700e1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 718
    return-void
.end method
