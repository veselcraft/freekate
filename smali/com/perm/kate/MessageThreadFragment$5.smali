.class Lcom/perm/kate/MessageThreadFragment$5;
.super Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$5;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "sticker_id"    # Ljava/lang/Integer;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$5;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->sendSticker(Ljava/lang/Integer;)V

    .line 336
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$5;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$800(Lcom/perm/kate/MessageThreadFragment;)V

    .line 337
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$5;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$900(Lcom/perm/kate/MessageThreadFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 338
    return-void
.end method
