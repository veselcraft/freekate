.class Lcom/perm/kate/CommentsActivity$30;
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

    .line 1144
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$30;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {p0}, Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public backspace()V
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$30;->this$0:Lcom/perm/kate/CommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->sendBackspace(Landroid/widget/EditText;)V

    return-void
.end method

.method public selected(Ljava/lang/String;)V
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$30;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/CommentsActivity;->access$3400(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;)V

    return-void
.end method

.method public stickerSelected(Ljava/lang/Integer;)V
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$30;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/CommentsActivity;->access$2800(Lcom/perm/kate/CommentsActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public stickersConfigure()V
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$30;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$3500(Lcom/perm/kate/CommentsActivity;)V

    return-void
.end method
