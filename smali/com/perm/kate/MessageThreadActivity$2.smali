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

    .line 249
    iput-object p1, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->onBackspace()V

    :cond_0
    return-void
.end method

.method public editTouch()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->hideBotKeyboard()V

    :cond_0
    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->addSmile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/perm/kate/MessageThreadFragment;->sendSticker(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public stickersConfigure()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/perm/kate/MessageThreadActivity$2;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->showMyStickersActivity()V

    :cond_0
    return-void
.end method
