.class Lcom/perm/kate/NewCommentActivity$20;
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

    .line 789
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$20;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$20;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$100(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$20;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewCommentActivity;->access$2900(Lcom/perm/kate/NewCommentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$20;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewCommentActivity;->access$500(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public stickersConfigure()V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$20;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity;->access$3000(Lcom/perm/kate/NewCommentActivity;)V

    return-void
.end method
