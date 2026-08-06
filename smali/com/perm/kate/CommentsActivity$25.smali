.class Lcom/perm/kate/CommentsActivity$25;
.super Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    .line 885
    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1
    .param p1, "smile_code"    # Ljava/lang/String;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/CommentsActivity;->access$2700(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "sticker_id"    # Ljava/lang/Integer;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/CommentsActivity;->access$2200(Lcom/perm/kate/CommentsActivity;Ljava/lang/Integer;)V

    .line 881
    return-void
.end method

.method public stickersConfigure()V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$25;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$2800(Lcom/perm/kate/CommentsActivity;)V

    .line 889
    return-void
.end method
