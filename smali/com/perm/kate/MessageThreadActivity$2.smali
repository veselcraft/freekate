.class Lcom/perm/kate/MessageThreadActivity$2;
.super Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.source "MessageThreadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageThreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadActivity;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->onBackspace()V

    .line 265
    :cond_0
    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1
    .param p1, "smile_code"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->addSmile(Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method

.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "sticker_id"    # Ljava/lang/Integer;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->sendSticker(Ljava/lang/Integer;)V

    .line 259
    :cond_0
    return-void
.end method

.method public stickersConfigure()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->showMyStickersActivity()V

    .line 271
    :cond_0
    return-void
.end method
