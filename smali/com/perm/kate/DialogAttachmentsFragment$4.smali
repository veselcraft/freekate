.class Lcom/perm/kate/DialogAttachmentsFragment$4;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$4;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$4;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object p1, p1, Lcom/perm/kate/DialogAttachmentsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    invoke-virtual {p1, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 253
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$4;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$700(Lcom/perm/kate/DialogAttachmentsFragment;)V

    return-void
.end method
