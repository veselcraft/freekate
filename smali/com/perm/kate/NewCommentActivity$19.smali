.class Lcom/perm/kate/NewCommentActivity$19;
.super Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.source "NewCommentActivity.java"


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
    .param p1, "this$0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$19;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$19;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$2700(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    .line 743
    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1
    .param p1, "smile_code"    # Ljava/lang/String;

    .prologue
    .line 734
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$19;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewCommentActivity;->access$2900(Lcom/perm/kate/NewCommentActivity;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "sticker_id"    # Ljava/lang/Integer;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$19;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewCommentActivity;->access$000(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Integer;)V

    .line 739
    return-void
.end method

.method public stickersConfigure()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$19;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$3000(Lcom/perm/kate/NewCommentActivity;)V

    .line 747
    return-void
.end method
