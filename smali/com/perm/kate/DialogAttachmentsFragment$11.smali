.class Lcom/perm/kate/DialogAttachmentsFragment$11;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;

.field final synthetic val$mid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;J)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$11;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iput-wide p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$11;->val$mid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 581
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$11;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$11;->val$mid:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$2300(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    return-void
.end method
