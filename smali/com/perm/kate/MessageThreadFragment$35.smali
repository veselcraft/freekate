.class Lcom/perm/kate/MessageThreadFragment$35;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment;->photoAttachmentsUploaded(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$attachment:Ljava/lang/String;

.field final synthetic val$display_toast:Z

.field final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$35;->val$attachment:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/MessageThreadFragment$35;->val$photos:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/perm/kate/MessageThreadFragment$35;->val$display_toast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1783
    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$35;->val$attachment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    sget-object v0, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$35;->val$photos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    invoke-static {}, Lcom/perm/kate/AttachmentsActivity;->attachmentsChanged()V

    .line 1786
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$3800(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1787
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment$35;->val$display_toast:Z

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$35;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700e1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1789
    :cond_0
    return-void
.end method
