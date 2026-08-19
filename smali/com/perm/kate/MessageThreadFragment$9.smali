.class Lcom/perm/kate/MessageThreadFragment$9;
.super Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$9;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$9;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->sendSticker(Ljava/lang/Integer;)V

    .line 675
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$9;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1800(Lcom/perm/kate/MessageThreadFragment;)V

    .line 676
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$9;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1900(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    return-void
.end method
